.class public final Landroid/media/MediaCodecInfo$EncoderCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncoderCapabilities"
.end annotation


# static fields
.field public static final BITRATE_MODE_CBR:I = 0x2

.field public static final BITRATE_MODE_CQ:I = 0x0

.field public static final BITRATE_MODE_VBR:I = 0x1

.field private static final bitrates:[Landroid/media/MediaCodecInfo$Feature;


# instance fields
.field private mBitControl:I

.field private mComplexityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultComplexity:Ljava/lang/Integer;

.field private mDefaultQuality:Ljava/lang/Integer;

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mQualityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQualityScale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1818
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/MediaCodecInfo$Feature;

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "VBR"

    invoke-direct {v1, v2, v4, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "CBR"

    invoke-direct {v1, v2, v5, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "CQ"

    invoke-direct {v1, v2, v3, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyLevelLimits()V
    .locals 3

    .prologue
    .line 1873
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1874
    .local v0, "mime":Ljava/lang/String;
    const-string v1, "audio/flac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1875
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 1876
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 1884
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    const-string v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audio/amr-wb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audio/g711-alaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audio/g711-mlaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audio/gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1882
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    goto :goto_0
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 1855
    new-instance v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;-><init>()V

    .line 1856
    .local v0, "caps":Landroid/media/MediaCodecInfo$EncoderCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 1857
    return-object v0
.end method

.method private static parseBitrateMode(Ljava/lang/String;)I
    .locals 5
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1825
    sget-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    .local v0, "arr$":[Landroid/media/MediaCodecInfo$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1826
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-object v4, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1827
    iget v4, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    .line 1830
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :goto_1
    return v4

    .line 1825
    .restart local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1830
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 7
    .param p1, "info"    # Landroid/media/MediaFormat;

    .prologue
    .line 1892
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v3

    .line 1894
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "complexity-range"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1895
    const-string v5, "complexity-range"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-static {v5, v6}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 1899
    :cond_0
    const-string/jumbo v5, "quality-range"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1900
    const-string/jumbo v5, "quality-range"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-static {v5, v6}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    .line 1903
    :cond_1
    const-string v5, "feature-bitrate-control"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1904
    const-string v5, "feature-bitrate-control"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1905
    .local v4, "mode":Ljava/lang/String;
    iget v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    invoke-static {v4}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->parseBitrateMode(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 1904
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1910
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "mode":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string v5, "complexity-default"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1914
    :goto_1
    :try_start_1
    const-string/jumbo v5, "quality-default"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1917
    :goto_2
    const-string/jumbo v5, "quality-scale"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityScale:Ljava/lang/String;

    .line 1918
    return-void

    .line 1915
    :catch_0
    move-exception v5

    goto :goto_2

    .line 1911
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 7
    .param p1, "complexity"    # Ljava/lang/Integer;
    .param p2, "quality"    # Ljava/lang/Integer;
    .param p3, "profile"    # Ljava/lang/Integer;

    .prologue
    .line 1922
    const/4 v3, 0x1

    .line 1923
    .local v3, "ok":Z
    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1924
    iget-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v5, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    .line 1926
    :cond_0
    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1927
    iget-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v5, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    .line 1929
    :cond_1
    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    .line 1930
    iget-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .local v0, "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1931
    .local v4, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 1932
    const/4 p3, 0x0

    .line 1936
    .end local v4    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_2
    if-nez p3, :cond_5

    const/4 v3, 0x1

    .line 1938
    .end local v0    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_3
    :goto_1
    return v3

    .line 1930
    .restart local v0    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1936
    .end local v4    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getComplexityRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    return-object v0
.end method

.method public getQualityRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1796
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    return-object v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 3
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    const/4 v2, 0x0

    .line 1863
    iput-object p2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1864
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 1865
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    .line 1866
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 1868
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->applyLevelLimits()V

    .line 1869
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 1870
    return-void
.end method

.method public isBitrateModeSupported(I)Z
    .locals 8
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1837
    sget-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    .local v0, "arr$":[Landroid/media/MediaCodecInfo$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1838
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget v6, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    if-ne p1, v6, :cond_1

    .line 1839
    iget v6, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    shl-int v7, v4, p1

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 1842
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :goto_1
    return v4

    .restart local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_0
    move v4, v5

    .line 1839
    goto :goto_1

    .line 1837
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_2
    move v4, v5

    .line 1842
    goto :goto_1
.end method

.method public setDefaultFormat(Landroid/media/MediaFormat;)V
    .locals 7
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 1944
    iget-object v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 1946
    const-string/jumbo v4, "quality"

    iget-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1948
    :cond_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 1950
    const-string v4, "complexity"

    iget-object v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1953
    :cond_1
    sget-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    .local v0, "arr$":[Landroid/media/MediaCodecInfo$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1954
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    const/4 v5, 0x1

    iget v6, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    shl-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 1955
    const-string v4, "bitrate-mode"

    iget v5, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    invoke-virtual {p1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1959
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_2
    return-void

    .line 1953
    .restart local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 10
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 1963
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v3

    .line 1964
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v8, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 1966
    .local v4, "mime":Ljava/lang/String;
    const-string v8, "bitrate-mode"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1967
    .local v5, "mode":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1968
    const/4 v8, 0x0

    .line 1998
    :goto_0
    return v8

    .line 1971
    :cond_0
    const-string v8, "complexity"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1972
    .local v1, "complexity":Ljava/lang/Integer;
    const-string v8, "audio/flac"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1973
    const-string v8, "flac-compression-level"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1975
    .local v2, "flacComplexity":Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 1976
    move-object v1, v2

    .line 1985
    .end local v2    # "flacComplexity":Ljava/lang/Integer;
    :cond_1
    const-string/jumbo v8, "profile"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1986
    .local v6, "profile":Ljava/lang/Integer;
    const-string v8, "audio/mp4a-latm"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1987
    const-string v8, "aac-profile"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1988
    .local v0, "aacProfile":Ljava/lang/Integer;
    if-nez v6, :cond_4

    .line 1989
    move-object v6, v0

    .line 1996
    .end local v0    # "aacProfile":Ljava/lang/Integer;
    :cond_2
    const-string/jumbo v8, "quality"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1998
    .local v7, "quality":Ljava/lang/Integer;
    invoke-direct {p0, v1, v7, v6}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v8

    goto :goto_0

    .line 1977
    .end local v6    # "profile":Ljava/lang/Integer;
    .end local v7    # "quality":Ljava/lang/Integer;
    .restart local v2    # "flacComplexity":Ljava/lang/Integer;
    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1978
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "conflicting values for complexity and flac-compression-level"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1990
    .end local v2    # "flacComplexity":Ljava/lang/Integer;
    .restart local v0    # "aacProfile":Ljava/lang/Integer;
    .restart local v6    # "profile":Ljava/lang/Integer;
    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1991
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "conflicting values for profile and aac-profile"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
