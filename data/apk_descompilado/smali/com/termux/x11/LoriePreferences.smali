.class public Lcom/termux/x11/LoriePreferences;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoriePreferences.java"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;,
        Lcom/termux/x11/LoriePreferences$PrefsProto;,
        Lcom/termux/x11/LoriePreferences$Receiver;
    }
.end annotation


# static fields
.field public static handler:Landroid/os/Handler;

.field public static prefs:Lcom/termux/x11/Prefs;


# instance fields
.field public final accessibilityObserver:Landroid/database/ContentObserver;

.field public final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$g_SqzPiikqIVJebm28mbCjOrDUs(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/x11/LoriePreferences;->lambda$updatePreferencesLayout$0(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    .line 705
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    sput-object v0, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 85
    new-instance v0, Lcom/termux/x11/LoriePreferences$1;

    invoke-direct {v0, p0}, Lcom/termux/x11/LoriePreferences$1;-><init>(Lcom/termux/x11/LoriePreferences;)V

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences;->receiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/termux/x11/LoriePreferences$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LoriePreferences$2;-><init>(Lcom/termux/x11/LoriePreferences;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences;->accessibilityObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic access$000(Lcom/termux/x11/LoriePreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/LoriePreferences;

    .line 81
    invoke-direct {p0}, Lcom/termux/x11/LoriePreferences;->updatePreferencesLayout()V

    return-void
.end method

.method public static synthetic access$100()Lcom/termux/x11/Prefs;
    .locals 1

    .line 81
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    return-object v0
.end method

.method public static synthetic lambda$updatePreferencesLayout$0(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 119
    instance-of v0, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    if-eqz v0, :cond_0

    .line 120
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updatePreferencesLayout()V

    .line 121
    :cond_0
    return-void
.end method

.method private updatePreferencesLayout()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 708
    new-instance v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    const-string v1, "ekbar"

    invoke-direct {v0, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/termux/x11/LoriePreferences;->showFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 709
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 126
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    new-instance v0, Lcom/termux/x11/Prefs;

    invoke-direct {v0, p0}, Lcom/termux/x11/Prefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;-><init>(Ljava/lang/String;)V

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 131
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 133
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 136
    :cond_0
    const-string v2, "enabled_accessibility_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 137
    .local v2, "ENABLED_ACCESSIBILITY_SERVICES":Landroid/net/Uri;
    const-string v3, "accessibility_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 139
    .local v3, "ACCESSIBILITY_ENABLED":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/x11/LoriePreferences;->accessibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/x11/LoriePreferences;->accessibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 161
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 167
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 170
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 153
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "caller"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "pref"    # Landroidx/preference/Preference;

    .line 183
    new-instance v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "fragment":Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/termux/x11/LoriePreferences;->showFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 186
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 4

    .line 146
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.termux.x11.ACTION_PREFERENCES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/termux/x11/LoriePreferences;->receiver:Landroid/content/BroadcastReceiver;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/termux/x11/LoriePreferences;->updatePreferencesLayout()V

    .line 115
    :cond_0
    return-void
.end method

.method public final showFragment(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 5
    .param p1, "fragment"    # Landroidx/preference/PreferenceFragmentCompat;

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$anim;->slide_in_right:I

    sget v2, Lcom/termux/x11/R$anim;->slide_out_left:I

    sget v3, Lcom/termux/x11/R$anim;->slide_in_left:I

    sget v4, Lcom/termux/x11/R$anim;->slide_out_right:I

    .line 175
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 176
    const v1, 0x1020002

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 179
    return-void
.end method
