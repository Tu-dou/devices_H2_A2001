.class Landroid/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageThread"
.end annotation


# static fields
.field static final RS_ERROR_FATAL_DEBUG:I = 0x800

.field static final RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field static final RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field static final RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field static final RS_MESSAGE_TO_CLIENT_NEW_BUFFER:I = 0x5

.field static final RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field static final RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field static final RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field mAuxData:[I

.field mRS:Landroid/renderscript/RenderScript;

.field mRun:Z


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 1095
    const-string v0, "RSMessageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1082
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 1096
    iput-object p1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 1098
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1103
    const/16 v7, 0x10

    new-array v4, v7, [I

    .line 1104
    .local v4, "rbuf":[I
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v8, v8, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v7, v8, v9}, Landroid/renderscript/RenderScript;->nContextInitToClient(J)V

    .line 1105
    :goto_0
    iget-boolean v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    if-eqz v7, :cond_a

    .line 1106
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v4, v7

    .line 1107
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v8, v8, Landroid/renderscript/RenderScript;->mContext:J

    iget-object v10, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    invoke-virtual {v7, v8, v9, v10}, Landroid/renderscript/RenderScript;->nContextPeekMessage(J[I)I

    move-result v3

    .line 1108
    .local v3, "msg":I
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    const/4 v8, 0x1

    aget v5, v7, v8

    .line 1109
    .local v5, "size":I
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    const/4 v8, 0x0

    aget v6, v7, v8

    .line 1111
    .local v6, "subID":I
    const/4 v7, 0x4

    if-ne v3, v7, :cond_3

    .line 1112
    shr-int/lit8 v7, v5, 0x2

    array-length v8, v4

    if-lt v7, v8, :cond_0

    .line 1113
    add-int/lit8 v7, v5, 0x3

    shr-int/lit8 v7, v7, 0x2

    new-array v4, v7, [I

    .line 1115
    :cond_0
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v8, v8, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v7, v8, v9, v4}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    .line 1117
    new-instance v7, Landroid/renderscript/RSDriverException;

    const-string v8, "Error processing message from RenderScript."

    invoke-direct {v7, v8}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1120
    :cond_1
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    if-eqz v7, :cond_2

    .line 1121
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput-object v4, v7, Landroid/renderscript/RenderScript$RSMessageHandler;->mData:[I

    .line 1122
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput v6, v7, Landroid/renderscript/RenderScript$RSMessageHandler;->mID:I

    .line 1123
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput v5, v7, Landroid/renderscript/RenderScript$RSMessageHandler;->mLength:I

    .line 1124
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v7}, Landroid/renderscript/RenderScript$RSMessageHandler;->run()V

    goto :goto_0

    .line 1126
    :cond_2
    new-instance v7, Landroid/renderscript/RSInvalidStateException;

    const-string v8, "Received a message from the script with no message handler installed."

    invoke-direct {v7, v8}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1131
    :cond_3
    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    .line 1132
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v8, v8, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v7, v8, v9}, Landroid/renderscript/RenderScript;->nContextGetErrorMessage(J)Ljava/lang/String;

    move-result-object v2

    .line 1141
    .local v2, "e":Ljava/lang/String;
    const/16 v7, 0x1000

    if-ge v6, v7, :cond_4

    const/16 v7, 0x800

    if-lt v6, v7, :cond_5

    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    sget-object v8, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-nez v7, :cond_5

    .line 1145
    :cond_4
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fatal error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1148
    :cond_5
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-eqz v7, :cond_6

    .line 1149
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    iput-object v2, v7, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    .line 1150
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    iput v6, v7, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    .line 1151
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v7, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    invoke-virtual {v7}, Landroid/renderscript/RenderScript$RSErrorHandler;->run()V

    goto/16 :goto_0

    .line 1153
    :cond_6
    const-string v7, "RenderScript_jni"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "non fatal RS error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1160
    .end local v2    # "e":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x5

    if-ne v3, v7, :cond_9

    .line 1161
    iget-object v7, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v8, v8, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v7, v8, v9, v4}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_8

    .line 1163
    new-instance v7, Landroid/renderscript/RSDriverException;

    const-string v8, "Error processing message from RenderScript."

    invoke-direct {v7, v8}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1165
    :cond_8
    const/4 v7, 0x1

    aget v7, v4, v7

    int-to-long v8, v7

    const/16 v7, 0x20

    shl-long/2addr v8, v7

    const/4 v7, 0x0

    aget v7, v4, v7

    int-to-long v10, v7

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long v0, v8, v10

    .line 1166
    .local v0, "bufferID":J
    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->sendBufferNotification(J)V

    goto/16 :goto_0

    .line 1175
    .end local v0    # "bufferID":J
    :cond_9
    const-wide/16 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v8, v9, v7}, Landroid/renderscript/RenderScript$MessageThread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1176
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 1180
    .end local v3    # "msg":I
    .end local v5    # "size":I
    .end local v6    # "subID":I
    :cond_a
    return-void
.end method
