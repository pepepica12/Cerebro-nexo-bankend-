.class public Lcom/termux/x11/input/TouchInputHandler$StylusListener;
.super Ljava/lang/Object;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/input/TouchInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StylusListener"
.end annotation


# instance fields
.field public buttons:I

.field public orientation:F

.field public pressure:F

.field public final synthetic this$0:Lcom/termux/x11/input/TouchInputHandler;

.field public tilt:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/termux/x11/input/TouchInputHandler;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    const/4 p1, 0x0

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->x:F

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->y:F

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->pressure:F

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    .line 906
    const/4 p1, 0x0

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->buttons:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p2, "x1"    # Lcom/termux/x11/input/TouchInputHandler$1;

    .line 904
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-void
.end method


# virtual methods
.method public final convertOrientation(F)I
    .locals 4
    .param p1, "value"    # F

    .line 909
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    double-to-int v0, v0

    .line 910
    .local v0, "newValue":I
    const/16 v1, 0xb4

    if-le v0, v1, :cond_0

    .line 911
    add-int/lit16 v1, v0, -0x168

    rem-int/lit16 v0, v1, 0x168

    .line 912
    :cond_0
    return v0
.end method

.method public extractButtons(Landroid/view/MotionEvent;)I
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 920
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v0

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->stylusButtonContactModifierMode:Z

    const/16 v1, 0x20

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 922
    invoke-virtual {p0, p1, v2}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->hasButton(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    const/4 v0, 0x2

    return v0

    .line 924
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->hasButton(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    const/4 v0, 0x4

    return v0

    .line 927
    :cond_1
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    return v0

    .line 928
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 930
    :cond_3
    const/4 v0, 0x0

    .line 931
    .local v0, "buttons":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_4

    .line 932
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 933
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->hasButton(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 934
    or-int/lit8 v0, v0, 0x2

    .line 935
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->hasButton(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 936
    or-int/lit8 v0, v0, 0x4

    .line 938
    :cond_6
    return v0
.end method

.method public final hasButton(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "button"    # I

    .line 916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 945
    .local v2, "action":I
    const/4 v3, 0x0

    .local v3, "tiltX":I
    const/4 v4, 0x0

    .line 946
    .local v4, "tiltY":I
    invoke-virtual/range {p0 .. p1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->extractButtons(Landroid/view/MotionEvent;)I

    move-result v12

    .line 947
    .local v12, "newButtons":I
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .local v5, "newX":F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 948
    .local v6, "newY":F
    invoke-virtual {v1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v15

    .line 949
    .local v15, "dev":Landroid/view/InputDevice;
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v16

    .line 950
    .local v16, "rangeX":Landroid/view/InputDevice$MotionRange;
    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v17

    .line 951
    .local v17, "rangeY":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    const/16 v10, 0x19

    invoke-virtual {v9, v10}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v9

    if-eqz v9, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    move/from16 v18, v9

    .line 952
    .local v18, "hasTilt":Z
    invoke-virtual {v1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    move/from16 v19, v9

    .line 954
    .local v19, "hasOrientation":Z
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->hasPointerCapture()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 955
    invoke-static {v15}, Lcom/termux/x11/input/TouchInputHandler;->isExternal(Landroid/view/InputDevice;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v16, :cond_2

    if-eqz v17, :cond_2

    .line 956
    iget-object v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v9}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v9

    iget v9, v9, Lcom/termux/x11/input/RenderData;->imageWidth:I

    int-to-float v9, v9

    invoke-virtual/range {v16 .. v16}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v13

    div-float/2addr v9, v13

    mul-float/2addr v5, v9

    .line 957
    iget-object v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v9}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v9

    iget v9, v9, Lcom/termux/x11/input/RenderData;->imageHeight:I

    int-to-float v9, v9

    invoke-virtual/range {v17 .. v17}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v13

    div-float/2addr v9, v13

    mul-float/2addr v6, v9

    move/from16 v25, v6

    move v6, v5

    move v5, v7

    move/from16 v7, v25

    goto :goto_2

    .line 959
    :cond_2
    iget-object v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v9}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v9

    iget-object v9, v9, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v9

    .line 960
    iget-object v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v9}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v9

    iget-object v9, v9, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v9

    move/from16 v25, v6

    move v6, v5

    move v5, v7

    move/from16 v7, v25

    .line 963
    .end local v5    # "newX":F
    .local v6, "newX":F
    .local v7, "newY":F
    :goto_2
    iget v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->x:F

    cmpl-float v9, v9, v6

    if-nez v9, :cond_3

    iget v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->y:F

    cmpl-float v9, v9, v7

    if-nez v9, :cond_3

    iget v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->pressure:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v13

    cmpl-float v9, v9, v13

    if-nez v9, :cond_3

    iget v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v13

    cmpl-float v9, v9, v13

    if-nez v9, :cond_3

    iget v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    .line 964
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v13

    cmpl-float v9, v9, v13

    if-nez v9, :cond_3

    iget v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->buttons:I

    if-ne v9, v12, :cond_3

    .line 965
    return v8

    .line 967
    :cond_3
    if-eqz v18, :cond_4

    if-eqz v19, :cond_4

    .line 968
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    iput v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    .line 969
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    iput v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    .line 970
    iget v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    neg-double v13, v13

    iget v9, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-double v8, v8

    const-wide v13, 0x404fc00000000000L    # 63.5

    mul-double/2addr v8, v13

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    sub-double v8, v8, v21

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v3, v8

    .line 971
    iget v8, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    move-wide/from16 v23, v13

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    double-to-float v5, v8

    float-to-double v8, v5

    mul-double v8, v8, v23

    sub-double v8, v8, v21

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v4, v8

    move v9, v3

    goto :goto_3

    .line 974
    :cond_4
    move v9, v3

    .end local v3    # "tiltX":I
    .local v9, "tiltX":I
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " y "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " pressure "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " tilt "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " orientation "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " buttonState "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " extractedButtons "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "STYLUS_EVENT"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v3, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v3}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v5

    iput v6, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->x:F

    iput v7, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->y:F

    .line 978
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    iput v3, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->pressure:F

    const v8, 0x477fff00    # 65535.0f

    mul-float/2addr v3, v8

    float-to-int v8, v3

    iget v3, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    .line 981
    invoke-virtual {v0, v3}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->convertOrientation(F)I

    move-result v11

    iput v12, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->buttons:I

    .line 983
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v10, 0x4

    if-ne v3, v10, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    iget-object v3, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    .line 984
    invoke-static {v3}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v3

    iget-boolean v14, v3, Lcom/termux/x11/input/InputEventSender;->stylusIsMouse:Z

    .line 975
    move v10, v4

    const/16 v20, 0x1

    .end local v4    # "tiltY":I
    .local v10, "tiltY":I
    invoke-virtual/range {v5 .. v14}, Lcom/termux/x11/input/InputEventSender;->sendStylusEvent(FFIIIIIZZ)V

    .line 986
    return v20
.end method
