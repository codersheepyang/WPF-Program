从昨天开始学习.NET的WPF框架了，利用微软提供的名为"在 Visual Studio 2019 中创建您的第一个 WPF 应用程序"的官方文档，也是整体对WPF产生了一点点的了解，这个README用于记录在这次学习到的一些大的概念以及知识，以作为巩固以及日后回顾
学习的文档地址：https://docs.microsoft.com/zh-cn/dotnet/framework/wpf/getting-started/walkthrough-my-first-wpf-desktop-application#next-steps
学到的东西：
①首先从创建WPF框架开始吧，WPF框架只能选择在.NET Framework平台创建，所以WPF程序也只能在Windows平台执行
②创建之后，最开始主要生成的文件有App.config,App.xaml,MainWindow.xaml,重点说一下后两个
	App.xaml:这个xaml应该是程序启动后会执行的第一个xaml了吧，然后在Application节点中配置了StartupUri，又会通过这个节点去做路由，默认是路由到MainWindow.xaml，其他的话这个xaml应该就是去做一些全局的事情，比如现在就有在Application.Resources下面设置全局的样式，这样其他的页面就可以服用这些样式，这个样式和CSS的样式的含义很像
	MainWindow.xaml：这个xaml目前只是简单的设置了一下程序的Title、Height、Width和路由到那个页面。不过设置了这些之后都会影响到其他页面，所以它也是一个全局的设置
其他的话每个xaml都有一个.cs文件，这个文件就是做一些资源的初始化，以及一些事件的处理
③然后