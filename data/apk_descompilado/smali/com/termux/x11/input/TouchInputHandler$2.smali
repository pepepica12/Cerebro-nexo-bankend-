.class public Lcom/termux/x11/input/TouchInputHandler$2;
.super Ljava/lang/Object;
.source "TouchInputHandler.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/input/TouchInputHandler;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/x11/input/TouchInputHandler;


# direct methods
.method public constructor <init>(Lcom/termux/x11/input/TouchInputHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 208
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$2;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .line 211
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 212
    .local v0, "dev":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    .line 213
    .local v1, "name":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputDeviceListener"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lcom/termux/x11/input/TouchInputHandler;->refreshInputDevices()V

    .line 215
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .line 225
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 226
    .local v0, "dev":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    .line 227
    .local v1, "name":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputDeviceListener"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/termux/x11/input/TouchInputHandler;->refreshInputDevices()V

    .line 229
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 219
    const-string v0, "InputDeviceListener"

    const-string v1, "device removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/termux/x11/input/TouchInputHandler;->refreshInputDevices()V

    .line 221
    return-void
.end method
