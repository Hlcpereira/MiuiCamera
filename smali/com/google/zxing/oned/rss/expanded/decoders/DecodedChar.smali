.class final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.source "DecodedChar.java"


# instance fields
.field private final value:C


# direct methods
.method constructor <init>(IC)V
    .locals 1
    .param p1, "newPosition"    # I
    .param p2, "value"    # C

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    .line 41
    int-to-char v0, p2

    iput-char v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    .line 42
    return-void
.end method


# virtual methods
.method getValue()C
    .locals 1

    .prologue
    .line 45
    iget-char v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    return v0
.end method

.method isFNC1()Z
    .locals 2

    .prologue
    .line 49
    iget-char v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
