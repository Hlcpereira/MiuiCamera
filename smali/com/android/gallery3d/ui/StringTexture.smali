.class public Lcom/android/gallery3d/ui/StringTexture;
.super Lcom/android/gallery3d/ui/CanvasTexture;
.source "StringTexture.java"


# instance fields
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "metrics"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 51
    invoke-direct {p0, p4, p5}, Lcom/android/gallery3d/ui/CanvasTexture;-><init>(II)V

    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/ui/StringTexture;->mText:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/gallery3d/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    .line 54
    iput-object p3, p0, Lcom/android/gallery3d/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 50
    return-void
.end method

.method public static getDefaultPaint(FII)Landroid/text/TextPaint;
    .locals 6
    .param p0, "textSize"    # F
    .param p1, "color"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x1

    const/high16 v5, -0x1000000

    const/high16 v2, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    const v3, 0x3dcccccd    # 0.1f

    .line 58
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 59
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 61
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 62
    if-ne p2, v1, :cond_0

    .line 64
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 65
    invoke-virtual {v0, v3, v2, v2, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 66
    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/StringTexture;->setLongshotMode(Landroid/text/TextPaint;F)V

    .line 75
    :goto_0
    return-object v0

    .line 67
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 69
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTimeTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x2e000000

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 71
    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/StringTexture;->setLongshotMode(Landroid/text/TextPaint;F)V

    goto :goto_0

    .line 73
    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v4, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;FIFZI)Lcom/android/gallery3d/ui/StringTexture;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F
    .param p2, "color"    # I
    .param p3, "lengthLimit"    # F
    .param p4, "isBold"    # Z
    .param p5, "type"    # I

    .prologue
    .line 97
    invoke-static {p1, p2, p5}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FII)Landroid/text/TextPaint;

    move-result-object v0

    .line 98
    .local v0, "paint":Landroid/text/TextPaint;
    if-eqz p4, :cond_0

    .line 99
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 103
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 102
    invoke-static {p0, v0, p3, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    :cond_1
    invoke-static {p0, v0, p5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;FII)Lcom/android/gallery3d/ui/StringTexture;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F
    .param p2, "color"    # I
    .param p3, "type"    # I

    .prologue
    .line 85
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FII)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcom/android/gallery3d/ui/StringTexture;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 110
    .local v3, "metrics":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    .line 111
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v0, 0x5

    .line 110
    :cond_0
    add-int v4, v1, v0

    .line 112
    .local v4, "width":I
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v5, v0, v1

    .line 114
    .local v5, "height":I
    if-gtz v4, :cond_1

    const/4 v4, 0x1

    .line 115
    :cond_1
    if-gtz v5, :cond_2

    const/4 v5, 0x1

    .line 116
    :cond_2
    new-instance v0, Lcom/android/gallery3d/ui/StringTexture;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v0
.end method

.method private static setLongshotMode(Landroid/text/TextPaint;F)V
    .locals 6
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "letterSpacing"    # F

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 80
    :cond_0
    const-class v0, Landroid/text/TextPaint;

    const-string/jumbo v1, "setLetterSpacing"

    const-string/jumbo v2, "(F)V"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/camera/aosp_porting/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "backing"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/StringTexture;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    return-void
.end method
