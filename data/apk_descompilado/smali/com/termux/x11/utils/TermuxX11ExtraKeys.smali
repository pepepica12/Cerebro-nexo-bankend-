.class public Lcom/termux/x11/utils/TermuxX11ExtraKeys;
.super Ljava/lang/Object;
.source "TermuxX11ExtraKeys.java"

# interfaces
.implements Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;


# static fields
.field public static mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;


# instance fields
.field public altDown:Z

.field public ctrlDown:Z

.field public final mActivity:Lcom/termux/x11/MainActivity;

.field public final mClipboardManager:Landroid/content/ClipboardManager;

.field public final mEventListener:Landroid/view/View$OnKeyListener;

.field public final mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

.field public final mVirtualKeyboardKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public metaDown:Z

.field public shiftDown:Z


# direct methods
.method public static synthetic $r8$lambda$dM30szqTfuvhCpV1qORaxlHLsdQ(Lcom/termux/x11/utils/TermuxX11ExtraKeys;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->lambda$performExtraKeyButtonHapticFeedback$0(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnKeyListener;Lcom/termux/x11/MainActivity;Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V
    .locals 2
    .param p1, "eventlistener"    # Landroid/view/View$OnKeyListener;
    .param p2, "activity"    # Lcom/termux/x11/MainActivity;
    .param p3, "extrakeysview"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mVirtualKeyboardKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 46
    iput-object p1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mEventListener:Landroid/view/View$OnKeyListener;

    .line 47
    iput-object p2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    .line 48
    iput-object p3, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 49
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 50
    return-void
.end method

.method public static getExtraKeysInfo()Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;
    .locals 1

    .line 219
    sget-object v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->setExtraKeys()V

    .line 221
    :cond_0
    sget-object v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    return-object v0
.end method

.method public static setExtraKeys()V
    .locals 8

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    .line 202
    :try_start_0
    invoke-static {}, Lcom/termux/x11/MainActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->get()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "extrakeys":Ljava/lang/String;
    new-instance v2, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    const-string v3, "extra-keys-style"

    sget-object v4, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->CONTROL_CHARS_ALIASES:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-direct {v2, v1, v3, v4}, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    sput-object v2, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1    # "extrakeys":Ljava/lang/String;
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load and set the \"extra-keys\" property from the properties file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 206
    const-string v2, "TermuxX11ExtraKeys"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :try_start_1
    new-instance v3, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    const-string v4, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\',\'PREFERENCES\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\',\'KEYBOARD\']]"

    const-string v6, "default"

    sget-object v7, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->CONTROL_CHARS_ALIASES:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-direct {v3, v4, v6, v7}, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    sput-object v3, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    goto :goto_0

    .line 210
    :catch_1
    move-exception v3

    .line 211
    .local v3, "e2":Lorg/json/JSONException;
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v4

    const-string v6, "Can\'t create default extra keys"

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 212
    const-string v4, "Could create default extra keys: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    sput-object v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    .line 216
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "e2":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method public final synthetic lambda$performExtraKeyButtonHapticFeedback$0(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V
    .locals 4
    .param p1, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    .line 142
    iget-object v0, p1, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "SHIFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "META"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "CTRL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "ALT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 156
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    sget-object v3, Lcom/termux/shared/termux/extrakeys/SpecialButton;->META:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v1, v3, v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    .local v0, "pressed":Z
    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    const/16 v3, 0x75

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    goto :goto_2

    .line 152
    .end local v0    # "pressed":Z
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    sget-object v3, Lcom/termux/shared/termux/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v1, v3, v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 153
    .restart local v0    # "pressed":Z
    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    const/16 v3, 0x3b

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 154
    goto :goto_2

    .line 148
    .end local v0    # "pressed":Z
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    sget-object v3, Lcom/termux/shared/termux/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v1, v3, v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 149
    .restart local v0    # "pressed":Z
    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    const/16 v3, 0x39

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 150
    goto :goto_2

    .line 144
    .end local v0    # "pressed":Z
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    sget-object v3, Lcom/termux/shared/termux/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v1, v3, v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    .restart local v0    # "pressed":Z
    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    const/16 v3, 0x71

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 146
    nop

    .line 160
    .end local v0    # "pressed":Z
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xfd89 -> :sswitch_3
        0x1fba6b -> :sswitch_2
        0x240e05 -> :sswitch_1
        0x4b37462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 57
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->macro:Z

    if-eqz v1, :cond_a

    .line 58
    iget-object v1, v0, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ctrlDown":Z
    const/4 v3, 0x0

    .local v3, "altDown":Z
    const/4 v4, 0x0

    .local v4, "shiftDown":Z
    const/4 v5, 0x0

    .local v5, "metaDown":Z
    const/4 v6, 0x0

    .line 60
    .local v6, "fnDown":Z
    array-length v7, v1

    const/4 v8, 0x0

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move v2, v8

    .end local v2    # "ctrlDown":Z
    .end local v3    # "altDown":Z
    .end local v4    # "shiftDown":Z
    .end local v5    # "metaDown":Z
    .end local v6    # "fnDown":Z
    .local v12, "ctrlDown":Z
    .local v13, "altDown":Z
    .local v14, "shiftDown":Z
    .local v15, "metaDown":Z
    .local v16, "fnDown":Z
    :goto_0
    if-ge v2, v7, :cond_5

    aget-object v3, v1, v2

    .line 61
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/termux/shared/termux/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v4}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    const/4 v4, 0x1

    move v12, v4

    .end local v12    # "ctrlDown":Z
    .local v4, "ctrlDown":Z
    goto :goto_1

    .line 63
    .end local v4    # "ctrlDown":Z
    .restart local v12    # "ctrlDown":Z
    :cond_0
    sget-object v4, Lcom/termux/shared/termux/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v4}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    const/4 v4, 0x1

    move v13, v4

    .end local v13    # "altDown":Z
    .local v4, "altDown":Z
    goto :goto_1

    .line 65
    .end local v4    # "altDown":Z
    .restart local v13    # "altDown":Z
    :cond_1
    sget-object v4, Lcom/termux/shared/termux/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v4}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    const/4 v4, 0x1

    move v14, v4

    .end local v14    # "shiftDown":Z
    .local v4, "shiftDown":Z
    goto :goto_1

    .line 67
    .end local v4    # "shiftDown":Z
    .restart local v14    # "shiftDown":Z
    :cond_2
    sget-object v4, Lcom/termux/shared/termux/extrakeys/SpecialButton;->META:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v4}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    const/4 v4, 0x1

    move v15, v4

    .end local v15    # "metaDown":Z
    .local v4, "metaDown":Z
    goto :goto_1

    .line 69
    .end local v4    # "metaDown":Z
    .restart local v15    # "metaDown":Z
    :cond_3
    sget-object v4, Lcom/termux/shared/termux/extrakeys/SpecialButton;->FN:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v4}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 60
    .end local v3    # "key":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_5
    array-length v2, v1

    :goto_2
    if-ge v8, v2, :cond_7

    aget-object v11, v1, v8

    .line 74
    .local v11, "key":Ljava/lang/String;
    sget-object v3, Lcom/termux/shared/termux/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v3}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_6

    sget-object v3, Lcom/termux/shared/termux/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    .line 75
    invoke-virtual {v3}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_6

    sget-object v3, Lcom/termux/shared/termux/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    .line 76
    invoke-virtual {v3}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_6

    sget-object v3, Lcom/termux/shared/termux/extrakeys/SpecialButton;->META:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    .line 77
    invoke-virtual {v3}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_6

    sget-object v3, Lcom/termux/shared/termux/extrakeys/SpecialButton;->FN:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    .line 78
    invoke-virtual {v3}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 79
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v16}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->onLorieExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V

    .line 73
    .end local v11    # "key":Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 82
    :cond_7
    if-nez v12, :cond_8

    if-nez v13, :cond_8

    if-nez v14, :cond_8

    if-nez v15, :cond_8

    if-eqz v16, :cond_9

    .line 83
    :cond_8
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v17 .. v24}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->onLorieExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->unsetSpecialKeys()V

    .line 86
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v12    # "ctrlDown":Z
    .end local v13    # "altDown":Z
    .end local v14    # "shiftDown":Z
    .end local v15    # "metaDown":Z
    .end local v16    # "fnDown":Z
    :cond_9
    goto :goto_3

    .line 87
    :cond_a
    iget-object v1, v0, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, v1

    invoke-virtual/range {v17 .. v24}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->onLorieExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V

    .line 89
    :goto_3
    return-void
.end method

.method public onLorieExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ctrlDown"    # Z
    .param p4, "altDown"    # Z
    .param p5, "shiftDown"    # Z
    .param p6, "metaDown"    # Z
    .param p7, "fnDown"    # Z

    .line 167
    const-string v0, "KEYBOARD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->toggleKeyboardVisibility(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 169
    :cond_0
    const-string v0, "DRAWER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PREFERENCES"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto/16 :goto_1

    .line 171
    :cond_2
    const-string v0, "EXIT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 173
    :cond_3
    const-string v0, "PASTE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 175
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_4

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 177
    .local v2, "pasted":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 178
    iget-object v3, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mVirtualKeyboardKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 179
    .local v3, "events":[Landroid/view/KeyEvent;
    if-eqz v3, :cond_4

    .line 180
    array-length v4, v3

    :goto_0
    nop

    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 181
    .local v5, "event":Landroid/view/KeyEvent;
    iget-object v6, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mEventListener:Landroid/view/View$OnKeyListener;

    iget-object v7, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v7}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-interface {v6, v7, v8, v5}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 180
    .end local v5    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v2    # "pasted":Ljava/lang/CharSequence;
    .end local v3    # "events":[Landroid/view/KeyEvent;
    :cond_4
    goto :goto_2

    :cond_5
    const-string v0, "MOUSE_HELPER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->toggleMouseAuxButtons()V

    goto :goto_2

    .line 186
    :cond_6
    const-string v0, "STYLUS_HELPER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->toggleStylusAuxButtons()V

    goto :goto_2

    .line 189
    :cond_7
    invoke-virtual/range {p0 .. p7}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V

    goto :goto_2

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    new-instance v1, Lcom/termux/x11/utils/TermuxX11ExtraKeys$1;

    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    const-class v3, Lcom/termux/x11/LoriePreferences;

    invoke-direct {v1, p0, v2, v3}, Lcom/termux/x11/utils/TermuxX11ExtraKeys$1;-><init>(Lcom/termux/x11/utils/TermuxX11ExtraKeys;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    :goto_2
    return-void
.end method

.method public onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ctrlDown"    # Z
    .param p4, "altDown"    # Z
    .param p5, "shiftDown"    # Z
    .param p6, "metaDown"    # Z
    .param p7, "fnDown"    # Z

    .line 92
    iget-boolean v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->ctrlDown:Z

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    .line 93
    iput-boolean p3, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->ctrlDown:Z

    .line 94
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2, p3}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->altDown:Z

    if-eq v0, p4, :cond_1

    .line 98
    iput-boolean p4, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->altDown:Z

    .line 99
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2, p4}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->shiftDown:Z

    if-eq v0, p5, :cond_2

    .line 103
    iput-boolean p5, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->shiftDown:Z

    .line 104
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2, p5}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 107
    :cond_2
    iget-boolean v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->metaDown:Z

    if-eq v0, p6, :cond_3

    .line 108
    iput-boolean p6, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->metaDown:Z

    .line 109
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, p6}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 112
    :cond_3
    sget-object v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    sget-object v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    .local v0, "keyCode":Ljava/lang/Integer;
    if-nez v0, :cond_4

    return-void

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v2}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 117
    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v2}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 118
    .end local v0    # "keyCode":Ljava/lang/Integer;
    :cond_5
    goto :goto_0

    :cond_6
    if-eqz p2, :cond_5

    .line 120
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->sendTextEvent([B)V

    .line 122
    :goto_0
    return-void
.end method

.method public performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 140
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/utils/TermuxX11ExtraKeys$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/termux/x11/utils/TermuxX11ExtraKeys$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/utils/TermuxX11ExtraKeys;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public unsetSpecialKeys()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    sget-object v2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 130
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    sget-object v4, Lcom/termux/shared/termux/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v2, v4, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 132
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    sget-object v4, Lcom/termux/shared/termux/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v2, v4, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 134
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    sget-object v4, Lcom/termux/shared/termux/extrakeys/SpecialButton;->META:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v2, v4, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 136
    :cond_4
    return-void
.end method
