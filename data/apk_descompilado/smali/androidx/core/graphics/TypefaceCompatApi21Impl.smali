.class public abstract Landroidx/core/graphics/TypefaceCompatApi21Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# static fields
.field public static sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field public static sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field public static sFontFamily:Ljava/lang/Class;

.field public static sFontFamilyCtor:Ljava/lang/reflect/Constructor;

.field public static sHasInitBeenCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method public static addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .locals 3
    .param p0, "family"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "style"    # Z

    .line 135
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    .line 137
    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 137
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 139
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 140
    .end local v0    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "family"    # Ljava/lang/Object;

    .line 122
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    .line 124
    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "familyArray":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 126
    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 128
    .end local v0    # "familyArray":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static init()V
    .locals 7

    .line 67
    sget-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    .line 77
    :try_start_0
    const-string v1, "android.graphics.FontFamily"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, "fontFamilyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 79
    .local v2, "fontFamilyCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v3, "addFontWeightStyle"

    const-class v4, Ljava/lang/String;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5, v6}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 81
    .local v3, "addFontMethod":Ljava/lang/reflect/Method;
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "familyArray":Ljava/lang/Object;
    const-class v4, Landroid/graphics/Typeface;

    const-string v5, "createFromFamiliesWithDefault"

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    .line 83
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "familyArray":Ljava/lang/Object;
    .local v4, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 85
    .end local v1    # "fontFamilyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "addFontMethod":Ljava/lang/reflect/Method;
    .end local v4    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TypefaceCompatApi21Impl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 v1, 0x0

    .line 88
    .restart local v1    # "fontFamilyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 89
    .restart local v2    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    .line 90
    .restart local v3    # "addFontMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 92
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v4    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    :goto_0
    sput-object v2, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 93
    sput-object v1, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    .line 94
    sput-object v3, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    .line 95
    sput-object v4, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 96
    return-void
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 2

    .line 113
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    .line 115
    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I

    .line 175
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->newFamily()Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "family":Ljava/lang/Object;
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 177
    .local v4, "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 178
    .local v5, "tmpFile":Ljava/io/File;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 179
    return-object v6

    .line 182
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v7

    invoke-static {v5, p3, v7}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 183
    nop

    .line 195
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 183
    return-object v6

    .line 186
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v9

    invoke-static {v0, v7, v8, v9}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_2

    .line 187
    nop

    .line 195
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 187
    return-object v6

    .line 195
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 196
    nop

    .line 176
    .end local v4    # "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v5    # "tmpFile":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .restart local v4    # "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .restart local v5    # "tmpFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 189
    :catch_0
    move-exception v1

    goto :goto_2

    .line 195
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 196
    throw v1

    .line 189
    :goto_2
    nop

    .line 193
    .local v1, "exception":Ljava/lang/RuntimeException;
    nop

    .line 195
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 193
    return-object v6

    .line 198
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    .end local v4    # "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v5    # "tmpFile":Ljava/io/File;
    :cond_3
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method
