.class public abstract Landroid/service/gesture/IEdgeGestureService$Stub;
.super Landroid/os/Binder;
.source "IEdgeGestureService.java"

# interfaces
.implements Landroid/service/gesture/IEdgeGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gesture/IEdgeGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.gesture.IEdgeGestureService"

.field static final TRANSACTION_registerEdgeGestureActivationListener:I = 0x1

.field static final TRANSACTION_setImeIsActive:I = 0x3

.field static final TRANSACTION_setOverwriteImeIsActive:I = 0x4

.field static final TRANSACTION_updateEdgeGestureActivationListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {p0, p0, v0}, Landroid/service/gesture/IEdgeGestureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/gesture/IEdgeGestureService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.service.gesture.IEdgeGestureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/gesture/IEdgeGestureService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/service/gesture/IEdgeGestureService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/gesture/IEdgeGestureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v3, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/gesture/IEdgeGestureActivationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gesture/IEdgeGestureActivationListener;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Landroid/service/gesture/IEdgeGestureActivationListener;
    invoke-virtual {p0, v0}, Landroid/service/gesture/IEdgeGestureService$Stub;->registerEdgeGestureActivationListener(Landroid/service/gesture/IEdgeGestureActivationListener;)Landroid/service/gesture/IEdgeGestureHostCallback;

    move-result-object v2

    .line 52
    .local v2, "_result":Landroid/service/gesture/IEdgeGestureHostCallback;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/service/gesture/IEdgeGestureHostCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 58
    .end local v0    # "_arg0":Landroid/service/gesture/IEdgeGestureActivationListener;
    .end local v2    # "_result":Landroid/service/gesture/IEdgeGestureHostCallback;
    :sswitch_2
    const-string v3, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/service/gesture/IEdgeGestureService$Stub;->updateEdgeGestureActivationListener(Landroid/os/IBinder;I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v3, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v4

    .line 72
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v0}, Landroid/service/gesture/IEdgeGestureService$Stub;->setImeIsActive(Z)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Z
    :sswitch_4
    const-string v3, "android.service.gesture.IEdgeGestureService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v4

    .line 81
    .restart local v0    # "_arg0":Z
    :cond_2
    invoke-virtual {p0, v0}, Landroid/service/gesture/IEdgeGestureService$Stub;->setOverwriteImeIsActive(Z)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
