.class public Lcom/android/server/gesture/EdgeGestureTracker;
.super Ljava/lang/Object;
.source "EdgeGestureTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/gesture/EdgeGestureTracker$1;,
        Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final PIXEL_SWIPE_OFFTAKE_SLOP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "EdgeGestureTracker"

.field public static final TRIGGER_TIME_MS:J = 0x8cL


# instance fields
.field private mActivationListener:Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

.field private mActive:Z

.field private final mBasePerpendicularDistance:I

.field private final mBaseThickness:I

.field private final mBaseTriggerDistance:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownTime:J

.field private mGracePeriod:I

.field private mGracePeriodDistance:I

.field private mInitialX:I

.field private mInitialY:I

.field private mIsImeIsActive:Z

.field private mOffTake:I

.field private mOverwriteImeIsActive:Z

.field private mPerpendicularDistance:I

.field private mPosition:Lcom/android/internal/util/gesture/EdgeGesturePosition;

.field private mThickness:I

.field private mTimeOut:J

.field private mTriggerDistance:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "thickness"    # I
    .param p2, "distance"    # I
    .param p3, "perpendicular"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBaseThickness:I

    .line 73
    iput p2, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBaseTriggerDistance:I

    .line 74
    iput p3, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBasePerpendicularDistance:I

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/gesture/EdgeGestureTracker;->setSensitivity(I)V

    .line 76
    return-void
.end method

.method private isImeActive(I)Z
    .locals 1
    .param p1, "positions"    # I

    .prologue
    .line 162
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mIsImeIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOverwriteImeIsActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSensitivity(I)V
    .locals 5
    .param p1, "sensitivity"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "factor":F
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 81
    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float v0, v1, v2

    .line 88
    :cond_0
    const/high16 v1, 0x430c0000    # 140.0f

    add-float v2, v0, v4

    mul-float/2addr v1, v2

    float-to-long v2, v1

    iput-wide v2, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTimeOut:J

    .line 90
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBaseThickness:I

    int-to-float v1, v1

    add-float v2, v0, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    .line 92
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBaseTriggerDistance:I

    int-to-float v1, v1

    sub-float v2, v4, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    .line 93
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBasePerpendicularDistance:I

    int-to-float v1, v1

    sub-float v2, v4, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    .line 94
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriodDistance:I

    .line 95
    return-void
.end method

.method private startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDownTime:J

    .line 172
    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPosition:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialX:I

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    .line 175
    sget-object v0, Lcom/android/server/gesture/EdgeGestureTracker$1;->$SwitchMap$com$android$internal$util$gesture$EdgeGesturePosition:[I

    invoke-virtual {p2}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    .line 192
    return-void

    .line 177
    :pswitch_0
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriodDistance:I

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriod:I

    .line 178
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialX:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    goto :goto_0

    .line 181
    :pswitch_1
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    goto :goto_0

    .line 184
    :pswitch_2
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriodDistance:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriod:I

    .line 185
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialX:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    goto :goto_0

    .line 188
    :pswitch_3
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public move(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 195
    iget-boolean v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDownTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTimeOut:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 196
    :cond_0
    const-string v5, "EdgeGestureTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "edge gesture timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDownTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-boolean v6, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    move v2, v6

    .line 267
    :cond_1
    :goto_0
    return v2

    .line 201
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 202
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 203
    .local v4, "y":I
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialX:I

    sub-int v0, v3, v7

    .line 204
    .local v0, "deltaX":I
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    sub-int v1, v4, v7

    .line 210
    .local v1, "deltaY":I
    const/4 v2, 0x0

    .line 211
    .local v2, "loaded":Z
    sget-object v7, Lcom/android/server/gesture/EdgeGestureTracker$1;->$SwitchMap$com$android$internal$util$gesture$EdgeGesturePosition:[I

    iget-object v8, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPosition:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-virtual {v8}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 259
    :cond_3
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    .line 260
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActivationListener:Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

    if-eqz v5, :cond_1

    .line 265
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActivationListener:Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

    iget-object v6, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPosition:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-interface {v5, p1, v3, v4, v6}, Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;->onActivation(Landroid/view/MotionEvent;IILcom/android/internal/util/gesture/EdgeGesturePosition;)V

    goto :goto_0

    .line 213
    :pswitch_0
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriod:I

    if-ge v3, v7, :cond_4

    .line 214
    iput v4, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    .line 216
    :cond_4
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    if-ge v1, v7, :cond_3

    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    neg-int v7, v7

    if-le v1, v7, :cond_3

    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    if-lt v3, v7, :cond_3

    .line 218
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    if-ge v0, v7, :cond_5

    .line 219
    add-int/lit8 v6, v3, -0x2

    iput v6, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    move v2, v5

    .line 220
    goto :goto_0

    .line 222
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 226
    :pswitch_1
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    if-ge v0, v7, :cond_3

    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    neg-int v7, v7

    if-le v0, v7, :cond_3

    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    if-gt v4, v7, :cond_3

    .line 228
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    neg-int v7, v7

    if-le v1, v7, :cond_6

    .line 229
    add-int/lit8 v6, v4, 0x2

    iput v6, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    move v2, v5

    .line 230
    goto :goto_0

    .line 232
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 236
    :pswitch_2
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriod:I

    if-le v3, v7, :cond_7

    .line 237
    iput v4, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    .line 239
    :cond_7
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    if-ge v1, v7, :cond_3

    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    neg-int v7, v7

    if-le v1, v7, :cond_3

    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    if-gt v3, v7, :cond_3

    .line 241
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    neg-int v7, v7

    if-le v0, v7, :cond_8

    .line 242
    add-int/lit8 v6, v3, 0x2

    iput v6, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    move v2, v5

    .line 243
    goto/16 :goto_0

    .line 245
    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .line 249
    :pswitch_3
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    if-ge v0, v7, :cond_3

    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    neg-int v7, v7

    if-le v0, v7, :cond_3

    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    if-lt v4, v7, :cond_3

    .line 251
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    if-ge v1, v7, :cond_9

    .line 252
    add-int/lit8 v6, v4, -0x2

    iput v6, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    move v2, v5

    .line 253
    goto/16 :goto_0

    .line 255
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    .line 103
    return-void
.end method

.method public setImeIsActive(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mIsImeIsActive:Z

    .line 107
    return-void
.end method

.method public setOnActivationListener(Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActivationListener:Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

    .line 99
    return-void
.end method

.method public setOverwriteImeIsActive(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOverwriteImeIsActive:Z

    .line 111
    return-void
.end method

.method public start(Landroid/view/MotionEvent;II)Z
    .locals 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "positions"    # I
    .param p3, "sensitivity"    # I

    .prologue
    const v6, 0x3f59999a    # 0.85f

    const v5, 0x3f19999a    # 0.6f

    const v10, 0x3e19999a    # 0.15f

    const v9, 0x3dcccccd    # 0.1f

    const/4 v4, 0x1

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v2, v7

    .line 125
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 126
    .local v0, "fx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v3, v7

    .line 127
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayHeight:I

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 130
    .local v1, "fy":F
    invoke-direct {p0, p3}, Lcom/android/server/gesture/EdgeGestureTracker;->setSensitivity(I)V

    .line 132
    sget-object v7, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v7, v7, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v7, p2

    if-eqz v7, :cond_1

    .line 133
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    if-ge v2, v7, :cond_1

    cmpl-float v7, v1, v10

    if-lez v7, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/gesture/EdgeGestureTracker;->isImeActive(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v5

    :goto_0
    cmpg-float v7, v1, v7

    if-gez v7, :cond_1

    .line 135
    sget-object v5, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-direct {p0, p1, v5}, Lcom/android/server/gesture/EdgeGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V

    .line 158
    :goto_1
    return v4

    :cond_0
    move v7, v6

    .line 133
    goto :goto_0

    .line 139
    :cond_1
    sget-object v7, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v7, v7, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v7, p2

    if-eqz v7, :cond_2

    .line 140
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayHeight:I

    iget v8, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    sub-int/2addr v7, v8

    if-le v3, v7, :cond_2

    cmpl-float v7, v0, v9

    if-lez v7, :cond_2

    const v7, 0x3f666666    # 0.9f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_2

    .line 141
    sget-object v5, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-direct {p0, p1, v5}, Lcom/android/server/gesture/EdgeGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V

    goto :goto_1

    .line 145
    :cond_2
    sget-object v7, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v7, v7, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v7, p2

    if-eqz v7, :cond_4

    .line 146
    iget v7, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayWidth:I

    iget v8, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    sub-int/2addr v7, v8

    if-le v2, v7, :cond_4

    cmpl-float v7, v1, v10

    if-lez v7, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/gesture/EdgeGestureTracker;->isImeActive(I)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    .line 148
    sget-object v5, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-direct {p0, p1, v5}, Lcom/android/server/gesture/EdgeGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V

    goto :goto_1

    :cond_3
    move v5, v6

    .line 146
    goto :goto_2

    .line 152
    :cond_4
    sget-object v5, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v5, v5, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_5

    .line 153
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    if-ge v3, v5, :cond_5

    cmpl-float v5, v0, v9

    if-lez v5, :cond_5

    const v5, 0x3f666666    # 0.9f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    .line 154
    sget-object v5, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-direct {p0, p1, v5}, Lcom/android/server/gesture/EdgeGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V

    goto :goto_1

    .line 158
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public updateDisplay(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/4 v1, 0x0

    .line 114
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 115
    .local v0, "outSize":Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 116
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayWidth:I

    .line 117
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayHeight:I

    .line 121
    return-void
.end method
