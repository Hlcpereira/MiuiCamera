.class final Lcom/google/zxing/pdf417/decoder/Codeword;
.super Ljava/lang/Object;
.source "Codeword.java"


# instance fields
.field private final bucket:I

.field private final endX:I

.field private rowNumber:I

.field private final startX:I

.field private final value:I


# direct methods
.method constructor <init>(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "endX"    # I
    .param p3, "bucket"    # I
    .param p4, "value"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    .line 33
    iput p1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    .line 34
    iput p2, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    .line 35
    iput p3, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    .line 36
    iput p4, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    .line 37
    return-void
.end method


# virtual methods
.method getBucket()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    return v0
.end method

.method getEndX()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    return v0
.end method

.method getRowNumber()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    return v0
.end method

.method getStartX()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    return v0
.end method

.method getValue()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    return v0
.end method

.method getWidth()I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method hasValidRowNumber()Z
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    return v0
.end method

.method isValidRowNumber(I)Z
    .locals 2
    .param p1, "rowNumber"    # I

    .prologue
    const/4 v0, -0x1

    .line 44
    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    rem-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method setRowNumber(I)V
    .locals 0
    .param p1, "rowNumber"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    .line 77
    return-void
.end method

.method setRowNumberAsRowIndicatorColumn()V
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
