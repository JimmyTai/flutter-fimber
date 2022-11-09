import 'package:fimber/fimber.dart';

import 'file_tree.dart';

class FimberFileTree extends FileTree {
  factory FimberFileTree.elapsed(String fileName,
      {List<String> logLevels = CustomFormatTree.defaultLevels}) {
    return FimberFileTree(fileName,
        logFormat: '${CustomFormatTree.timeElapsedToken}'
            '\t${CustomFormatTree.messageToken}');
  }

  FimberFileTree(
    String fileName, {
    String logFormat =
        '${CustomFormatTree.timeStampToken}\t${CustomFormatTree.messageToken}',
    List<String> logLevels = CustomFormatTree.defaultLevels,
    int maxBufferSize = FileTree.defaultBufferSizeLimit,
    int bufferWriteInterval = FileTree.defaultBufferFlushInterval,
  }) : super(fileName,
            logLevels: logLevels,
            logFormat: logFormat,
            maxBufferSize: maxBufferSize,
            bufferWriteInterval: bufferWriteInterval);

  @override
  void onBufferFlushed(String fileName, int fileSize) {}
}