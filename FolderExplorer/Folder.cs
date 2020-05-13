using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FolderExplorer
{
    class Folder
    {
        private DirectoryInfo _folder;
        private ObservableCollection<Folder> _subFolders;
        private ObservableCollection<FileInfo> _files;

        public string Name
        {
            get
            {
                return this._folder.Name;
            }
            private set { }
        }

        public Folder()
        {
            FullPath = @"C:\";
        }

        public string FullPath
        {
            get
            {
                return this._folder.FullName;
            }
            set
            {
                if (Directory.Exists(value))
                {
                    this._folder = new DirectoryInfo(value);
                }
                else
                {
                    throw new ArgumentException("must exits","fullPath");
                }
            }
        }
        public ObservableCollection<FileInfo> Files
        {
            get
            {
                if (this._files == null)
                {
                    this._files = new ObservableCollection<FileInfo>();
                    FileInfo[] fi = this._folder.GetFiles();
                    foreach (FileInfo i in fi)
                    {
                        this._files.Add(i);
                    }
                }
                return this._files;
            }
            private set
            { }
        }

        public ObservableCollection<Folder> SubFolders
        {
            get
            {
                if (this._subFolders == null)
                {
                    try
                    {
                        this._subFolders = new ObservableCollection<Folder>();
                        DirectoryInfo[] dirs = this._folder.GetDirectories();
                        foreach (DirectoryInfo d in dirs)
                        {
                            Folder folder = new Folder();
                            folder.FullPath = d.FullName;
                            this._subFolders.Add(folder);
                        }
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Trace.WriteLine(ex.Message);
                    }
                }
                return this._subFolders;
            }
        }
    }
}
