.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x2e

.field static final TRANSACTION_addMediaPlayerAndUpdateRemoteController:I = 0x4e

.field static final TRANSACTION_adjustMasterVolume:I = 0x3

.field static final TRANSACTION_adjustStreamVolume:I = 0x2

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x1

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x26

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x44

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0xa

.field static final TRANSACTION_forceVolumeControlStream:I = 0x39

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x30

.field static final TRANSACTION_getCurrentHotwordInputPackageName:I = 0xc

.field static final TRANSACTION_getLastAudibleMasterVolume:I = 0x15

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0x14

.field static final TRANSACTION_getMasterMaxVolume:I = 0x13

.field static final TRANSACTION_getMasterStreamType:I = 0x3c

.field static final TRANSACTION_getMasterVolume:I = 0x10

.field static final TRANSACTION_getMode:I = 0x20

.field static final TRANSACTION_getRemoteControlClientNowPlayingEntries:I = 0x4b

.field static final TRANSACTION_getRingerModeExternal:I = 0x19

.field static final TRANSACTION_getRingerModeInternal:I = 0x1a

.field static final TRANSACTION_getRingtonePlayer:I = 0x3b

.field static final TRANSACTION_getStreamMaxVolume:I = 0x11

.field static final TRANSACTION_getStreamVolume:I = 0xf

.field static final TRANSACTION_getVibrateSetting:I = 0x1d

.field static final TRANSACTION_handleHotwordInput:I = 0xb

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x2c

.field static final TRANSACTION_isBluetoothScoOn:I = 0x2a

.field static final TRANSACTION_isCameraSoundForced:I = 0x40

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x46

.field static final TRANSACTION_isMasterMute:I = 0xe

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x28

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x43

.field static final TRANSACTION_isStreamMute:I = 0x9

.field static final TRANSACTION_isValidRingerMode:I = 0x1b

.field static final TRANSACTION_loadSoundEffects:I = 0x23

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x42

.field static final TRANSACTION_playSoundEffect:I = 0x21

.field static final TRANSACTION_playSoundEffectVolume:I = 0x22

.field static final TRANSACTION_registerAudioPolicy:I = 0x47

.field static final TRANSACTION_registerRemoteControlDisplay_48:I = 0x31

.field static final TRANSACTION_registerRemoteController:I = 0x32

.field static final TRANSACTION_reloadAudioSettings:I = 0x25

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x34

.field static final TRANSACTION_remoteControlDisplayWantsPlaybackPositionSync_52:I = 0x35

.field static final TRANSACTION_removeMediaPlayerAndUpdateRemoteController:I = 0x4f

.field static final TRANSACTION_requestAudioFocus:I = 0x2d

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x3e

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x2b

.field static final TRANSACTION_setBluetoothScoOn:I = 0x29

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x49

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x45

.field static final TRANSACTION_setMasterMute:I = 0xd

.field static final TRANSACTION_setMasterVolume:I = 0x6

.field static final TRANSACTION_setMicrophoneMute:I = 0x16

.field static final TRANSACTION_setMode:I = 0x1f

.field static final TRANSACTION_setRemoteControlClientBrowsedPlayer:I = 0x4a

.field static final TRANSACTION_setRemoteControlClientPlayItem:I = 0x4c

.field static final TRANSACTION_setRemoteStreamVolume:I = 0x5

.field static final TRANSACTION_setRingerModeExternal:I = 0x17

.field static final TRANSACTION_setRingerModeInternal:I = 0x18

.field static final TRANSACTION_setRingtonePlayer:I = 0x3a

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x27

.field static final TRANSACTION_setStreamMaxVolume:I = 0x12

.field static final TRANSACTION_setStreamMute:I = 0x8

.field static final TRANSACTION_setStreamSolo:I = 0x7

.field static final TRANSACTION_setStreamVolume:I = 0x4

.field static final TRANSACTION_setVibrateSetting:I = 0x1c

.field static final TRANSACTION_setVolumeController:I = 0x41

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x3d

.field static final TRANSACTION_shouldVibrate:I = 0x1e

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x37

.field static final TRANSACTION_startBluetoothSco_53:I = 0x36

.field static final TRANSACTION_startWatchingRoutes:I = 0x3f

.field static final TRANSACTION_stopBluetoothSco:I = 0x38

.field static final TRANSACTION_unloadSoundEffects:I = 0x24

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x2f

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x48

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x33

.field static final TRANSACTION_updateRemoteControllerOnExistingMediaPlayers:I = 0x4d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 883
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(IIILjava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_2
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_3
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustMasterVolume(IILjava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 101
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRemoteStreamVolume(I)V

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 116
    .end local v1    # "_arg0":I
    :sswitch_6
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterVolume(IILjava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 129
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 135
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 136
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 133
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 142
    .end local v1    # "_arg0":I
    :sswitch_8
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 148
    .restart local v2    # "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 149
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 146
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 155
    .end local v1    # "_arg0":I
    :sswitch_9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v9

    .line 159
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v9, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 160
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 165
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 169
    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 170
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 167
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 176
    :sswitch_b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 179
    .restart local v1    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->handleHotwordInput(Z)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 178
    .end local v1    # "_arg0":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 185
    :sswitch_c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCurrentHotwordInputPackageName()Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 193
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 197
    .restart local v1    # "_arg0":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 202
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 195
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 208
    :sswitch_e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v9

    .line 210
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v9, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 216
    .end local v9    # "_result":Z
    :sswitch_f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v9

    .line 220
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 226
    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_10
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMasterVolume()I

    move-result v9

    .line 228
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 234
    .end local v9    # "_result":I
    :sswitch_11
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v9

    .line 238
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 244
    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_12
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setStreamMaxVolume(II)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 255
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_13
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMasterMaxVolume()I

    move-result v9

    .line 257
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 263
    .end local v9    # "_result":I
    :sswitch_14
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 266
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v9

    .line 267
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 273
    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_15
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getLastAudibleMasterVolume()I

    move-result v9

    .line 275
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 281
    .end local v9    # "_result":I
    :sswitch_16
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 285
    .local v1, "_arg0":Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 283
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 292
    :sswitch_17
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 303
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 314
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_19
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v9

    .line 316
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 322
    .end local v9    # "_result":I
    :sswitch_1a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v9

    .line 324
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 330
    .end local v9    # "_result":I
    :sswitch_1b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v9

    .line 334
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    if-eqz v9, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 335
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 340
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_1c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 344
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 351
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_1d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v9

    .line 355
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 361
    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_1e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v9

    .line 365
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v9, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 366
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 371
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_1f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 376
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 382
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_20
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v9

    .line 384
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 390
    .end local v9    # "_result":I
    :sswitch_21
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    .line 394
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 398
    .end local v1    # "_arg0":I
    :sswitch_22
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 402
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 403
    .local v2, "_arg1":F
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 404
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 408
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":F
    :sswitch_23
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v9

    .line 410
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v9, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 411
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 416
    .end local v9    # "_result":Z
    :sswitch_24
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 418
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 422
    :sswitch_25
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 424
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 428
    :sswitch_26
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    .line 433
    .local v2, "_arg1":Z
    :goto_c
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 434
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 432
    .end local v2    # "_arg1":Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 438
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_27
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 441
    .local v1, "_arg0":Z
    :goto_d
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 440
    .end local v1    # "_arg0":Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 447
    :sswitch_28
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v9

    .line 449
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v9, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 450
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 455
    .end local v9    # "_result":Z
    :sswitch_29
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 458
    .restart local v1    # "_arg0":Z
    :goto_f
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 457
    .end local v1    # "_arg0":Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 464
    :sswitch_2a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v9

    .line 466
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v9, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 467
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 472
    .end local v9    # "_result":Z
    :sswitch_2b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 475
    .restart local v1    # "_arg0":Z
    :goto_11
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 474
    .end local v1    # "_arg0":Z
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 481
    :sswitch_2c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v9

    .line 483
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v9, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 484
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 489
    .end local v9    # "_result":Z
    :sswitch_2d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 492
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 498
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 500
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 502
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 504
    .local v4, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 506
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 510
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v8

    .local v8, "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object v0, p0

    .line 511
    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v9

    .line 512
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 495
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v9    # "_result":I
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/media/AudioAttributes;
    goto :goto_13

    .line 518
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    :sswitch_2e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 522
    .local v1, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 525
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    .line 530
    .local v3, "_arg2":Landroid/media/AudioAttributes;
    :goto_14
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v9

    .line 531
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 528
    .end local v3    # "_arg2":Landroid/media/AudioAttributes;
    .end local v9    # "_result":I
    :cond_13
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/media/AudioAttributes;
    goto :goto_14

    .line 537
    .end local v1    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/AudioAttributes;
    :sswitch_2f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 546
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_30
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v9

    .line 548
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 554
    .end local v9    # "_result":I
    :sswitch_31
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 558
    .local v1, "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 560
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 561
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v9

    .line 562
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v9, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 563
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 568
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v9    # "_result":Z
    :sswitch_32
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 572
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 574
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 576
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 577
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 582
    .local v4, "_arg3":Landroid/content/ComponentName;
    :goto_16
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v9

    .line 583
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    if-eqz v9, :cond_16

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 580
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/content/ComponentName;
    goto :goto_16

    .line 584
    .restart local v9    # "_result":Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    .line 589
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_result":Z
    :sswitch_33
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 592
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 593
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 597
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_34
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 601
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 603
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 604
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 605
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 609
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_35
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 613
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v2, 0x1

    .line 614
    .local v2, "_arg1":Z
    :goto_18
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 615
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 613
    .end local v2    # "_arg1":Z
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 619
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_36
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 623
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 630
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_37
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 633
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 639
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_38
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 642
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 648
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_39
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 652
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 653
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 659
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_3a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 662
    .local v1, "_arg0":Landroid/media/IRingtonePlayer;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 668
    .end local v1    # "_arg0":Landroid/media/IRingtonePlayer;
    :sswitch_3b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v9

    .line 670
    .local v9, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v9, :cond_18

    invoke-interface {v9}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 672
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 671
    :cond_18
    const/4 v0, 0x0

    goto :goto_19

    .line 676
    .end local v9    # "_result":Landroid/media/IRingtonePlayer;
    :sswitch_3c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMasterStreamType()I

    move-result v9

    .line 678
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 684
    .end local v9    # "_result":I
    :sswitch_3d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 688
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 690
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 697
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_3e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 700
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 706
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 708
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 709
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v9

    .line 710
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 703
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v9    # "_result":I
    :cond_19
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1a

    .line 716
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v1

    .line 719
    .local v1, "_arg0":Landroid/media/IAudioRoutesObserver;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v9

    .line 720
    .local v9, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v9, :cond_1a

    .line 722
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 728
    :goto_1b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 726
    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 732
    .end local v1    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v9    # "_result":Landroid/media/AudioRoutesInfo;
    :sswitch_40
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v9

    .line 734
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    if-eqz v9, :cond_1b

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 735
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    .line 740
    .end local v9    # "_result":Z
    :sswitch_41
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 743
    .local v1, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 749
    .end local v1    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_42
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 753
    .restart local v1    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v2, 0x1

    .line 754
    .local v2, "_arg1":Z
    :goto_1d
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 753
    .end local v2    # "_arg1":Z
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 760
    .end local v1    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_43
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 763
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v9

    .line 764
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    if-eqz v9, :cond_1d

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 765
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    .line 770
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_44
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume()V

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 777
    :sswitch_45
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 780
    .local v1, "_arg0":Z
    :goto_1f
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v9

    .line 781
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 779
    .end local v1    # "_arg0":Z
    .end local v9    # "_result":I
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 787
    :sswitch_46
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v9

    .line 789
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    if-eqz v9, :cond_1f

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 790
    :cond_1f
    const/4 v0, 0x0

    goto :goto_20

    .line 795
    .end local v9    # "_result":Z
    :sswitch_47
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 798
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 804
    .local v1, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 806
    .local v2, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v3, 0x1

    .line 807
    .local v3, "_arg2":Z
    :goto_22
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;

    move-result-object v9

    .line 808
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 810
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 801
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_arg2":Z
    .end local v9    # "_result":Ljava/lang/String;
    :cond_20
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_21

    .line 806
    .restart local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_21
    const/4 v3, 0x0

    goto :goto_22

    .line 814
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_48
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 817
    .local v1, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 818
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 822
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_49
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 826
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 827
    .restart local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v9

    .line 828
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 834
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v9    # "_result":I
    :sswitch_4a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->setRemoteControlClientBrowsedPlayer()V

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 841
    :sswitch_4b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRemoteControlClientNowPlayingEntries()V

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 848
    :sswitch_4c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 852
    .local v10, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 853
    .local v2, "_arg1":I
    invoke-virtual {p0, v10, v11, v2}, Landroid/media/IAudioService$Stub;->setRemoteControlClientPlayItem(JI)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 859
    .end local v2    # "_arg1":I
    .end local v10    # "_arg0":J
    :sswitch_4d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->updateRemoteControllerOnExistingMediaPlayers()V

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 866
    :sswitch_4e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->addMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 875
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 878
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->removeMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
