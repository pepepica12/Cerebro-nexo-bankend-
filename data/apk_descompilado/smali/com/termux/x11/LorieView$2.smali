.class public Lcom/termux/x11/LorieView$2;
.super Ljava/lang/Object;
.source "LorieView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LorieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/x11/LorieView;


# direct methods
.method public constructor <init>(Lcom/termux/x11/LorieView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/LorieView;

    .line 555
    iput-object p1, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "f"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 561
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/x11/LorieView;->access$100(Lcom/termux/x11/LorieView;Landroid/view/Surface;)V

    .line 562
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 563
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface was changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceChangedListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$200(Lcom/termux/x11/LorieView;)Lcom/termux/x11/LorieView$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 567
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->getDimensionsFromSettings()V

    .line 570
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$200(Lcom/termux/x11/LorieView;)Lcom/termux/x11/LorieView$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$200(Lcom/termux/x11/LorieView;)Lcom/termux/x11/LorieView$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v1}, Lcom/termux/x11/LorieView;->access$300(Lcom/termux/x11/LorieView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v2}, Lcom/termux/x11/LorieView;->access$300(Lcom/termux/x11/LorieView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, p3, p4, v1, v2}, Lcom/termux/x11/LorieView$Callback;->changed(IIII)V

    .line 572
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 557
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 558
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 575
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/termux/x11/LorieView;->access$100(Lcom/termux/x11/LorieView;Landroid/view/Surface;)V

    .line 576
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$200(Lcom/termux/x11/LorieView;)Lcom/termux/x11/LorieView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/termux/x11/LorieView$2;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$200(Lcom/termux/x11/LorieView;)Lcom/termux/x11/LorieView$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lcom/termux/x11/LorieView$Callback;->changed(IIII)V

    .line 578
    :cond_0
    return-void
.end method
