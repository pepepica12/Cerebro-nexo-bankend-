.class public abstract Lcom/termux/x11/IRemoteCmdImterface$Stub;
.super Landroid/os/Binder;
.source "IRemoteCmdImterface.java"

# interfaces
.implements Lcom/termux/x11/IRemoteCmdImterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/IRemoteCmdImterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/IRemoteCmdImterface$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.termux.x11.IRemoteCmdImterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/termux/x11/IRemoteCmdImterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "com.termux.x11.IRemoteCmdImterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/termux/x11/IRemoteCmdImterface;

    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    check-cast v1, Lcom/termux/x11/IRemoteCmdImterface;

    return-object v1

    .line 41
    :cond_1
    new-instance v1, Lcom/termux/x11/IRemoteCmdImterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/termux/x11/IRemoteCmdImterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 49
    const-string v0, "com.termux.x11.IRemoteCmdImterface"

    .line 50
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v1

    .line 57
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "_arg1":Ljava/lang/String;
    invoke-interface {p0, v2, v3}, Lcom/termux/x11/IRemoteCmdImterface;->exit(ILjava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    nop

    .line 74
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
