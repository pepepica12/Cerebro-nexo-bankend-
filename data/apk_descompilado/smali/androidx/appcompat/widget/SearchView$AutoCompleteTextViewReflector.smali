.class public Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCompleteTextViewReflector"
.end annotation


# instance fields
.field public doAfterTextChanged:Ljava/lang/reflect/Method;

.field public doBeforeTextChanged:Ljava/lang/reflect/Method;

.field public ensureImeVisible:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 2029
    const-class v0, Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2031
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "doBeforeTextChanged"

    new-array v4, v1, [Ljava/lang/Class;

    .line 2032
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2033
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2036
    goto :goto_0

    .line 2034
    :catch_0
    move-exception v3

    .line 2038
    :goto_0
    :try_start_1
    const-string v3, "doAfterTextChanged"

    new-array v1, v1, [Ljava/lang/Class;

    .line 2039
    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2040
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2043
    goto :goto_1

    .line 2041
    :catch_1
    move-exception v1

    .line 2045
    :goto_1
    :try_start_2
    const-string v1, "ensureImeVisible"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 2046
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    .line 2047
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2050
    goto :goto_2

    .line 2048
    :catch_2
    move-exception v0

    .line 2051
    :goto_2
    return-void
.end method


# virtual methods
.method public doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .line 2063
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2065
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    goto :goto_0

    .line 2066
    :catch_0
    move-exception v0

    .line 2069
    :cond_0
    :goto_0
    return-void
.end method

.method public doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .line 2054
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2056
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    goto :goto_0

    .line 2057
    :catch_0
    move-exception v0

    .line 2060
    :cond_0
    :goto_0
    return-void
.end method

.method public ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p2, "visible"    # Z

    .line 2072
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2074
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2076
    goto :goto_0

    .line 2075
    :catch_0
    move-exception v0

    .line 2078
    :cond_0
    :goto_0
    return-void
.end method
