.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# instance fields
.field mFillAlpha:F

.field mFillColor:I

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:I

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1360
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1345
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1346
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1348
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1349
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1351
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1352
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1353
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1354
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1356
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1357
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1358
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1362
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1365
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1345
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1346
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1348
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1349
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1351
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1352
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1353
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1354
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1356
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1357
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1358
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1366
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1368
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1369
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1370
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1371
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1372
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillRule:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillRule:I

    .line 1373
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1374
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1375
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1376
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1378
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1379
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1380
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1381
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 1384
    packed-switch p1, :pswitch_data_0

    .line 1392
    .end local p2    # "defValue":Landroid/graphics/Paint$Cap;
    :goto_0
    return-object p2

    .line 1386
    .restart local p2    # "defValue":Landroid/graphics/Paint$Cap;
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1388
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1390
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Join;

    .prologue
    .line 1397
    packed-switch p1, :pswitch_data_0

    .line 1405
    .end local p2    # "defValue":Landroid/graphics/Paint$Join;
    :goto_0
    return-object p2

    .line 1399
    .restart local p2    # "defValue":Landroid/graphics/Paint$Join;
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1401
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1403
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v4, -0x1

    .line 1423
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .line 1426
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1428
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1429
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1430
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .line 1433
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1435
    invoke-static {v0}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1438
    :cond_1
    const/4 v2, 0x1

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1440
    const/16 v2, 0xc

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1442
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1444
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1446
    const/16 v2, 0xa

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1448
    const/4 v2, 0x3

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1450
    const/16 v2, 0xb

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1452
    const/4 v2, 0x4

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1454
    const/4 v2, 0x6

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1456
    const/4 v2, 0x7

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1458
    const/4 v2, 0x5

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1460
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1464
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-nez v1, :cond_0

    .line 1471
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1469
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1470
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFillAlpha()F
    .locals 1

    .prologue
    .line 1516
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .prologue
    .line 1506
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .prologue
    .line 1476
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .prologue
    .line 1486
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .prologue
    .line 1536
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .prologue
    .line 1546
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .prologue
    .line 1526
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1415
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1417
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1418
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1419
    return-void
.end method

.method setFillAlpha(F)V
    .locals 0
    .param p1, "fillAlpha"    # F

    .prologue
    .line 1521
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1522
    return-void
.end method

.method setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    .prologue
    .line 1511
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1512
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0
    .param p1, "strokeAlpha"    # F

    .prologue
    .line 1501
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1502
    return-void
.end method

.method setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    .prologue
    .line 1481
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1482
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 1491
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1492
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F

    .prologue
    .line 1541
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1542
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F

    .prologue
    .line 1551
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1552
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F

    .prologue
    .line 1531
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1532
    return-void
.end method
