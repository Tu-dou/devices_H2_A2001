.class Lcom/android/server/InputMethodManagerService$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/internal/util/cm/QSUtils$OnQSChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$1;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQSChanged()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$1;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->processQSChangedLocked()V
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$000(Lcom/android/server/InputMethodManagerService;)V

    .line 196
    return-void
.end method
