.class Landroid/gesture/GestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;
.source "GestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field fireActionPerformed:Z

.field resetMultipleStrokes:Z

.field final synthetic this$0:Landroid/gesture/GestureOverlayView;


# direct methods
.method private constructor <init>(Landroid/gesture/GestureOverlayView;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/gesture/GestureOverlayView;
    .param p2, "x1"    # Landroid/gesture/GestureOverlayView$1;

    .prologue
    .line 746
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xff

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 751
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->access$100(Landroid/gesture/GestureOverlayView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 752
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 753
    .local v4, "now":J
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mFadingStart:J
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->access$200(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 755
    .local v0, "duration":J
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mFadeDuration:J
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->access$300(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v6

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 756
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    if-eqz v3, :cond_0

    .line 757
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # invokes: Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->access$400(Landroid/gesture/GestureOverlayView;)V

    .line 760
    :cond_0
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->access$502(Landroid/gesture/GestureOverlayView;Z)Z

    .line 761
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->access$102(Landroid/gesture/GestureOverlayView;Z)Z

    .line 762
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    .line 763
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 764
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;
    invoke-static {v3, v12}, Landroid/gesture/GestureOverlayView;->access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 765
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # invokes: Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v3, v11}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    .line 789
    .end local v0    # "duration":J
    .end local v4    # "now":J
    :goto_0
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v3}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 790
    return-void

    .line 767
    .restart local v0    # "duration":J
    .restart local v4    # "now":J
    :cond_1
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v3, v9}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    .line 768
    const/4 v3, 0x0

    long-to-float v6, v0

    iget-object v7, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mFadeDuration:J
    invoke-static {v7}, Landroid/gesture/GestureOverlayView;->access$300(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v8

    long-to-float v7, v8

    div-float/2addr v6, v7

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 770
    .local v2, "interpolatedTime":F
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    iget-object v6, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;
    invoke-static {v6}, Landroid/gesture/GestureOverlayView;->access$1100(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v10, v6

    # setter for: Landroid/gesture/GestureOverlayView;->mFadingAlpha:F
    invoke-static {v3, v6}, Landroid/gesture/GestureOverlayView;->access$1002(Landroid/gesture/GestureOverlayView;F)F

    .line 771
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const/high16 v6, 0x437f0000    # 255.0f

    iget-object v7, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mFadingAlpha:F
    invoke-static {v7}, Landroid/gesture/GestureOverlayView;->access$1000(Landroid/gesture/GestureOverlayView;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    # invokes: Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v3, v6}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    .line 772
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const-wide/16 v6, 0x10

    invoke-virtual {v3, p0, v6, v7}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 774
    .end local v0    # "duration":J
    .end local v2    # "interpolatedTime":F
    .end local v4    # "now":J
    :cond_2
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    if-eqz v3, :cond_3

    .line 775
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mResetGesture:Z
    invoke-static {v3, v9}, Landroid/gesture/GestureOverlayView;->access$1202(Landroid/gesture/GestureOverlayView;Z)Z

    goto :goto_0

    .line 777
    :cond_3
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # invokes: Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->access$400(Landroid/gesture/GestureOverlayView;)V

    .line 779
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    .line 780
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    iget-boolean v3, v3, Landroid/gesture/GestureOverlayView;->mClearPerformedGesture:Z

    if-eqz v3, :cond_4

    .line 781
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 782
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;
    invoke-static {v3, v12}, Landroid/gesture/GestureOverlayView;->access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 783
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->access$502(Landroid/gesture/GestureOverlayView;Z)Z

    .line 786
    :goto_1
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # invokes: Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v3, v11}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    goto :goto_0

    .line 785
    :cond_4
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mResetGesture:Z
    invoke-static {v3, v9}, Landroid/gesture/GestureOverlayView;->access$1202(Landroid/gesture/GestureOverlayView;Z)Z

    goto :goto_1
.end method
