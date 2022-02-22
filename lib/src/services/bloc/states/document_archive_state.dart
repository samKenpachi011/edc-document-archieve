import 'package:edc_document_archieve/src/utils/enums.dart';
import 'package:equatable/equatable.dart';

class DocumentArchieveState<T> extends Equatable {
  const DocumentArchieveState._(
      {this.status = DocumentArchieveStatus.initial, this.data});

  const DocumentArchieveState.initial() : this._();

  const DocumentArchieveState.error()
      : this._(status: DocumentArchieveStatus.error);

  const DocumentArchieveState.loaded({T? data})
      : this._(status: DocumentArchieveStatus.success, data: data);

  const DocumentArchieveState.loading()
      : this._(status: DocumentArchieveStatus.loading);

  final DocumentArchieveStatus status;
  final T? data;

  @override
  List<Object> get props => [status];
}
