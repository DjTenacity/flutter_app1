import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//使用了(=>)符号, 这是Dart中单行函数或方法的简写
void main() => runApp(new MyApp());

/**该应用程序继承了 StatelessWidget，这将会使应用本身也成为一个widget。
 *  在Flutter中，大多数东西都是widget，
 *  包括对齐(alignment)、填充(padding)和布局(layout)
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(
        //通过配置ThemeData类轻松更改应用程序的主题
        primaryColor: Colors.white,
      ),
      home: new RandomWords(),
    );
//    return new MaterialApp(
//      title: 'Welcome to Flutter',
//      /** Scaffold 是 Material library 中提供的一个widget,
//       *  它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。widget树可以很复杂。
//       **/
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Welcome to Flutter'),
//        ),
//        body: new Center(
//          //child: new Text('Hello World'),
//          //child: new Text(wordPair.asPascalCase),
//          child: new RandomWords(),
//        ),
//      ),
//    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  final _saved = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();
    //return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    //当用户点击导航栏中的列表图标时，建立一个路由并将其推入到导航管理器栈中。此操作会切换页面以显示新路由。
    //新页面的内容在在MaterialPageRoute的builder属性中构建，builder是一个匿名函数。
    //添加Navigator.push调用，这会使路由入栈（以后路由入栈均指推入到导航管理器的栈）
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _saved.map(
            (pair) {
              //ListTile的divideTiles()方法在每个ListTile之间添加1像素的分割线。
              // 该 divided 变量持有最终的列表项。
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );

          final divided = ListTile
              .divideTiles(
                context: context,
                tiles: tiles,
              )
              .toList();
          //导航器会在应用栏中添加一个“返回”按钮。你不必显式实现Navigator.pop
          //返回一个Scaffold，其中包含名为“Saved Suggestions”的新路由的应用栏。
          // 新路由的body由包含ListTiles行的ListView组成; 每行之间通过一个分隔线分隔
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggestions'),
            ),
            body: new ListView(children: divided),
          );
        },
      ),
    );
  }

  //此方法构建显示建议单词对的ListView。
  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
        // 在偶数行，该函数会为单词对添加一个ListTile row.
        // 在奇数行，该行书湖添加一个分割线widget，来分隔相邻的词对。
        // 注意，在小屏幕上，分割线看起来可能比较吃力。
        itemBuilder: (context, i) {
          // 在每一列之前，添加一个1像素高的分隔线widget
          if (i.isOdd) return new Divider();

          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
          // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
          final index = i ~/ 2;
          // 如果是建议列表中最后一个单词对
          if (index >= _suggestions.length) {
            // ...接着再生成10个单词对，然后添加到建议列表
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  //这个函数在ListTile中显示每个新词对
  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}
//在Flutter的响应式风格的框架中，调用setState() 会为State对象触发build()方法，从而导致对UI的更新
