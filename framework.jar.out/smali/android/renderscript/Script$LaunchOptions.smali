.class public final Landroid/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 416
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 417
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 418
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 419
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 420
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-void
.end method

.method static synthetic access$000(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 414
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method static synthetic access$100(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 414
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method static synthetic access$200(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 414
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method static synthetic access$300(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 414
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method static synthetic access$400(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 414
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method static synthetic access$500(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 414
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method


# virtual methods
.method public getXEnd()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public getXStart()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public getYEnd()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public getYStart()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public getZEnd()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public getZStart()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public setX(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "xstartArg"    # I
    .param p2, "xendArg"    # I

    .prologue
    .line 433
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 434
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 437
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 438
    return-object p0
.end method

.method public setY(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "ystartArg"    # I
    .param p2, "yendArg"    # I

    .prologue
    .line 451
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 452
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 455
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 456
    return-object p0
.end method

.method public setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "zstartArg"    # I
    .param p2, "zendArg"    # I

    .prologue
    .line 469
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 470
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 473
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    .line 474
    return-object p0
.end method
