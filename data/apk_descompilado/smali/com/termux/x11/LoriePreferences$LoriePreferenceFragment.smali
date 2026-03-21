.class public Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "LoriePreferences.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoriePreferenceFragment"
.end annotation


# static fields
.field public static final onSetInitialValue:Ljava/lang/reflect/Method;


# instance fields
.field public final root:Ljava/lang/String;

.field public final updateLayout:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$7ssRk0hr53IYkoUA_ct46Ecbf00(Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EUCK6-QRhDdqWC9RS-Mr0nxEwl0(Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->lambda$onCreatePreferences$1(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDxKgNk3f_r0fIlmDdHjJ4ZAWMo(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->lambda$onDisplayPreferenceDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dlR2_M61H06t56EJpuECgz5-gcQ(Landroid/view/InputDevice;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->lambda$onCreatePreferences$2(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$liKZi7Oa_tI6w21GqbKUPOEuhw8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->lambda$onDisplayPreferenceDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m4HMGotxdu9HWprrh-2C4jTM6rk(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->lambda$onDisplayPreferenceDialog$3(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 195
    :try_start_0
    const-class v0, Landroidx/preference/Preference;

    const-string v1, "onSetInitialValue"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->onSetInitialValue:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    nop

    .line 199
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 190
    new-instance v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;)V

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updateLayout:Ljava/lang/Runnable;

    .line 216
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->root:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public static synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)V
    .locals 1
    .param p0, "p"    # Landroidx/preference/Preference;

    .line 272
    sget v0, Lcom/termux/x11/R$layout;->preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static synthetic lambda$onCreatePreferences$1(Landroidx/preference/Preference;)V
    .locals 1
    .param p0, "p"    # Landroidx/preference/Preference;

    .line 273
    const-string v0, "1.03.01-6d62752-30.11.25"

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$onCreatePreferences$2(Landroid/view/InputDevice;)Z
    .locals 1
    .param p0, "d"    # Landroid/view/InputDevice;

    .line 289
    const/16 v0, 0x4002

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$onDisplayPreferenceDialog$3(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "config"    # Landroid/widget/EditText;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 475
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "text":Ljava/lang/String;
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const-string v2, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\',\'PREFERENCES\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\',\'KEYBOARD\']]"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->put(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public static synthetic lambda$onDisplayPreferenceDialog$4(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 480
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    const-string v1, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\',\'PREFERENCES\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\',\'KEYBOARD\']]"

    invoke-virtual {v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->put(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onDisplayPreferenceDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 481
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public findId(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 373
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 375
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updatePreferencesLayout()V

    .line 376
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 244
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 245
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->put(Ljava/lang/String;)V

    .line 247
    :cond_0
    sget v0, Lcom/termux/x11/R$xml;->preferences:I

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->root:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "main"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->root:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 251
    .local v0, "screen":Landroidx/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findId(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "id":I
    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 254
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 255
    .local v3, "p":Landroidx/preference/Preference;
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 258
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findId(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    if-eqz v4, :cond_3

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_summary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findId(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    if-eqz v4, :cond_4

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    :cond_4
    instance-of v4, v3, Landroidx/preference/ListPreference;

    if-eqz v4, :cond_5

    .line 265
    move-object v4, v3

    check-cast v4, Landroidx/preference/ListPreference;

    .line 266
    .local v4, "list":Landroidx/preference/ListPreference;
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v5

    iget-object v5, v5, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getEntries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v5

    iget-object v5, v5, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getValues()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {}, Landroidx/preference/ListPreference$SimpleSummaryProvider;->getInstance()Landroidx/preference/ListPreference$SimpleSummaryProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 253
    .end local v3    # "p":Landroidx/preference/Preference;
    .end local v4    # "list":Landroidx/preference/ListPreference;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    nop

    .line 272
    .end local v1    # "i":I
    new-instance v1, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "showAdditionalKbd"

    invoke-virtual {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->with(Ljava/lang/CharSequence;Ljava/util/function/Consumer;)V

    .line 273
    new-instance v1, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda5;-><init>()V

    const-string v3, "version"

    invoke-virtual {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->with(Ljava/lang/CharSequence;Ljava/util/function/Consumer;)V

    .line 275
    const-string v1, "displayStretch"

    sget v3, Lcom/termux/x11/R$string;->pref_summary_requiresExactOrCustom:I

    invoke-virtual {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setSummary(Ljava/lang/CharSequence;I)V

    .line 276
    const-string v1, "adjustResolution"

    sget v3, Lcom/termux/x11/R$string;->pref_summary_requiresExactOrCustom:I

    invoke-virtual {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setSummary(Ljava/lang/CharSequence;I)V

    .line 277
    const-string v1, "pauseKeyInterceptingWithEsc"

    sget v3, Lcom/termux/x11/R$string;->pref_summary_requiresIntercepting:I

    invoke-virtual {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setSummary(Ljava/lang/CharSequence;I)V

    .line 278
    const-string v1, "scaleTouchpad"

    sget v3, Lcom/termux/x11/R$string;->pref_summary_requiresTrackpadAndNative:I

    invoke-virtual {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setSummary(Ljava/lang/CharSequence;I)V

    .line 280
    invoke-static {}, Lcom/termux/x11/utils/SamsungDexUtils;->available()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    .line 281
    const-string v1, "dexMetaKeyCapture"

    invoke-virtual {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 283
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v1, v4, :cond_8

    .line 284
    const-string v1, "hideCutout"

    invoke-virtual {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 286
    :cond_8
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda6;-><init>()V

    .line 287
    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda7;-><init>()V

    .line 288
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda8;-><init>()V

    .line 289
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 291
    .local v1, "stylusAvailable":Z
    const-string v3, "showStylusClickOverride"

    invoke-virtual {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 292
    const-string v3, "stylusIsMouse"

    invoke-virtual {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 293
    const-string v3, "stylusButtonContactModifierMode"

    invoke-virtual {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 295
    const-string v3, "volumeDownAction"

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const-string v4, "android volume control"

    invoke-virtual {p0, v3, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setNoActionOptionText(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    .line 296
    const-string v3, "volumeUpAction"

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setNoActionOptionText(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    .line 297
    const-string v3, "mediaKeysAction"

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const-string v4, "android media control"

    invoke-virtual {p0, v3, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setNoActionOptionText(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    .line 298
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 460
    const-string v0, "extra_keys_config"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$layout;->extra_keys_config:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 463
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/termux/x11/R$id;->extra_keys_config:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 464
    .local v1, "config":Landroid/widget/EditText;
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 465
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v2

    iget-object v2, v2, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    sget v2, Lcom/termux/x11/R$id;->extra_keys_config_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 467
    .local v2, "desc":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 468
    sget v3, Lcom/termux/x11/R$string;->extra_keys_config_desc:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 469
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 470
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 472
    const-string v4, "Extra keys config"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;)V

    .line 473
    const-string v5, "OK"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda2;-><init>()V

    .line 479
    const-string v5, "Reset"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda3;-><init>()V

    .line 481
    const-string v5, "Cancel"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 482
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 483
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 484
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "config":Landroid/widget/EditText;
    .end local v2    # "desc":Landroid/widget/TextView;
    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    .line 485
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 404
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Preferences"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object v1, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    sget-object v1, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updateLayout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    const-string v1, "displayScale"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 410
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 411
    .local v1, "scale":I
    rem-int/lit8 v3, v1, 0xa

    if-eqz v3, :cond_0

    .line 412
    int-to-float v3, v1

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    .line 413
    .end local v1    # "scale":I
    .local v3, "scale":I
    move-object v1, p1

    check-cast v1, Landroidx/preference/SeekBarPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    .line 414
    return v2

    .line 418
    .end local v3    # "scale":I
    :cond_0
    const-string v1, "displayResolutionCustom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 419
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 421
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, "resolution":[Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 423
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    nop

    .end local v4    # "resolution":[Ljava/lang/String;
    goto :goto_1

    .line 424
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 425
    .local v3, "ignored":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "Wrong resolution format"

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 426
    return v2

    .line 430
    .end local v1    # "value":Ljava/lang/String;
    .end local v3    # "ignored":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    const-string v1, "showAdditionalKbd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->additionalKbdVisible:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->put(Z)V

    .line 433
    :cond_2
    const-string v1, "enableAccessibilityServiceAutomatically"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 435
    invoke-static {v2}, Lcom/termux/x11/utils/KeyInterceptor;->shutdown(Z)V

    .line 436
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 437
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 438
    const-string v3, "Permission denied"

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 439
    const-string v3, "Android requires WRITE_SECURE_SETTINGS permission to start accessibility service automatically.\nPlease, launch this command using ADB:\nadb shell pm grant com.termux.x11 android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 442
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 445
    return v2

    .line 449
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$2;

    const-string v4, "com.termux.x11.ACTION_PREFERENCES_CHANGED"

    invoke-direct {v2, p0, v4, v0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$2;-><init>(Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 455
    return v3
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1, "p"    # Landroidx/preference/Preference;

    .line 380
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 381
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0

    .line 383
    :cond_0
    const-string v0, "version"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 385
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 386
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 387
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 388
    const-string v1, "Copied to clipboard"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 392
    .end local v0    # "ctx":Landroid/content/Context;
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    const-string v0, "requestNotificationPermission"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 394
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_2
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updatePreferencesLayout()V

    .line 398
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 221
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LoriePreferences;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public onSetInitialValue(Landroidx/preference/Preference;)V
    .locals 3
    .param p1, "p"    # Landroidx/preference/Preference;

    .line 203
    :try_start_0
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->onSetInitialValue:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    nop

    .line 207
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final setEnabled(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Z

    .line 317
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 318
    .local v0, "p":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 320
    :cond_0
    return-void
.end method

.method public final setNoActionOptionText(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 361
    if-nez p1, :cond_0

    .line 362
    return-void

    .line 363
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 364
    .local v0, "p":Landroidx/preference/ListPreference;
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 365
    .local v1, "options":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 366
    const-string v3, "no action"

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no action ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 365
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 369
    .end local v2    # "i":I
    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "disabled"    # I

    .line 301
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 302
    .local v0, "pref":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 303
    new-instance v1, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$1;-><init>(Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 308
    :cond_0
    return-void
.end method

.method public final setVisible(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Z

    .line 311
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 312
    .local v0, "p":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 314
    :cond_0
    return-void
.end method

.method public updatePreferencesLayout()V
    .locals 8

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 329
    .local v2, "p":Landroidx/preference/Preference;
    if-eqz v2, :cond_1

    .line 330
    invoke-virtual {p0, v2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->onSetInitialValue(Landroidx/preference/Preference;)V

    .line 331
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "p":Landroidx/preference/Preference;
    :cond_1
    goto :goto_0

    .line 333
    :cond_2
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "displayResMode":Ljava/lang/String;
    const-string v1, "scaled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "displayScale"

    invoke-virtual {p0, v2, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 335
    const-string v1, "displayResolutionExact"

    const-string v2, "exact"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 336
    const-string v1, "displayResolutionCustom"

    const-string v3, "custom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 338
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    const-string v5, "dexMetaKeyCapture"

    invoke-virtual {p0, v5, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 339
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->dexMetaKeyCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    xor-int/2addr v1, v4

    const-string v5, "enableAccessibilityServiceAutomatically"

    invoke-virtual {p0, v5, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 340
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->dexMetaKeyCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_4

    .line 341
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-nez v1, :cond_4

    .line 342
    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->isLaunched()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v4

    .line 340
    :goto_2
    const-string v7, "pauseKeyInterceptingWithEsc"

    invoke-virtual {p0, v7, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 343
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->isLaunched()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    goto :goto_3

    :cond_6
    move v1, v6

    goto :goto_4

    :goto_3
    move v1, v4

    :goto_4
    invoke-virtual {p0, v5, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 344
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->isLaunched()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    goto :goto_5

    :cond_8
    move v1, v6

    goto :goto_6

    :goto_5
    move v1, v4

    :goto_6
    const-string v5, "filterOutWinkey"

    invoke-virtual {p0, v5, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 346
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    goto :goto_7

    :cond_a
    move v1, v6

    goto :goto_8

    :goto_7
    move v1, v4

    .line 347
    .local v1, "displayStretchEnabled":Z
    :goto_8
    const-string v2, "displayStretch"

    invoke-virtual {p0, v2, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 348
    const-string v2, "adjustResolution"

    invoke-virtual {p0, v2, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 350
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v2

    iget-object v2, v2, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v2

    iget-object v2, v2, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const-string v5, "native"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    goto :goto_9

    :cond_b
    move v2, v6

    :goto_9
    const-string v5, "scaleTouchpad"

    invoke-virtual {p0, v5, v2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 351
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v2

    iget-object v2, v2, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "showMouseHelper"

    invoke-virtual {p0, v3, v2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 353
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_c

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    goto :goto_a

    :cond_c
    move v4, v6

    :goto_a
    nop

    .line 356
    .local v4, "requestNotificationPermissionVisible":Z
    const-string v2, "requestNotificationPermission"

    invoke-virtual {p0, v2, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 357
    return-void
.end method

.method public final with(Ljava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 228
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroidx/preference/Preference;>;"
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 229
    .local v0, "p":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 230
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 231
    :cond_0
    return-void
.end method
