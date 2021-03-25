class ResultModel {
  double areaFloor;
  int piecesByLength;
  int piecesByWidth;
  double priceResult;

  ResultModel({
    this.areaFloor = 0.0,
    this.piecesByLength = 0,
    this.piecesByWidth = 0,
    this.priceResult = 0.0,
  });

  int get amountPieces => piecesByWidth * piecesByLength;
  int get amountFooter => piecesByWidth + piecesByLength;
  int get amountPiecesAndFooter => amountPieces + amountFooter;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
  double get totalValue => amountPiecesAndFooter * priceResult;
}
