.class public Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/c$a;
    }
.end annotation


# static fields
.field private static volatile l:Lcom/bumptech/glide/c;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation
.end field

.field private static volatile m:Z


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/k;

.field private final b:Lg0/d;

.field private final c:Lh0/h;

.field private final d:Lcom/bumptech/glide/e;

.field private final e:Lcom/bumptech/glide/Registry;

.field private final f:Lg0/b;

.field private final g:Lcom/bumptech/glide/manager/h;

.field private final h:Lp0/b;

.field private final i:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "managers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/h;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/c$a;

.field private k:Lcom/bumptech/glide/MemoryCategory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/k;Lh0/h;Lg0/d;Lg0/b;Lcom/bumptech/glide/manager/h;Lp0/b;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/f;)V
    .locals 27
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lh0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lg0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lg0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/bumptech/glide/manager/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lp0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/bumptech/glide/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/k;",
            "Lh0/h;",
            "Lg0/d;",
            "Lg0/b;",
            "Lcom/bumptech/glide/manager/h;",
            "Lp0/b;",
            "I",
            "Lcom/bumptech/glide/c$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/g<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/bumptech/glide/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    move-object/from16 v10, p12

    .line 1
    const-class v4, Lc0/a;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    .line 3
    sget-object v8, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    iput-object v8, v0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/MemoryCategory;

    move-object/from16 v9, p2

    .line 4
    iput-object v9, v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/k;

    .line 5
    iput-object v1, v0, Lcom/bumptech/glide/c;->b:Lg0/d;

    .line 6
    iput-object v3, v0, Lcom/bumptech/glide/c;->f:Lg0/b;

    move-object/from16 v8, p3

    .line 7
    iput-object v8, v0, Lcom/bumptech/glide/c;->c:Lh0/h;

    move-object/from16 v8, p6

    .line 8
    iput-object v8, v0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/manager/h;

    move-object/from16 v8, p7

    .line 9
    iput-object v8, v0, Lcom/bumptech/glide/c;->h:Lp0/b;

    move-object/from16 v8, p9

    .line 10
    iput-object v8, v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/c$a;

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 12
    new-instance v12, Lcom/bumptech/glide/Registry;

    invoke-direct {v12}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v12, v0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/Registry;

    .line 13
    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v13}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v12, v13}, Lcom/bumptech/glide/Registry;->o(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 14
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1b

    if-lt v13, v14, :cond_0

    .line 15
    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/p;

    invoke-direct {v14}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>()V

    invoke-virtual {v12, v14}, Lcom/bumptech/glide/Registry;->o(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 16
    :cond_0
    invoke-virtual {v12}, Lcom/bumptech/glide/Registry;->g()Ljava/util/List;

    move-result-object v14

    .line 17
    new-instance v15, Lcom/bumptech/glide/load/resource/gif/a;

    invoke-direct {v15, v2, v14, v1, v3}, Lcom/bumptech/glide/load/resource/gif/a;-><init>(Landroid/content/Context;Ljava/util/List;Lg0/d;Lg0/b;)V

    .line 18
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/c0;->h(Lg0/d;)Le0/f;

    move-result-object v8

    .line 19
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/m;

    .line 20
    invoke-virtual {v12}, Lcom/bumptech/glide/Registry;->g()Ljava/util/List;

    move-result-object v0

    move-object/from16 v16, v7

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {v9, v0, v7, v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lg0/d;Lg0/b;)V

    const/16 v0, 0x1c

    if-lt v13, v0, :cond_1

    .line 21
    const-class v7, Lcom/bumptech/glide/d$c;

    .line 22
    invoke-virtual {v10, v7}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 23
    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/t;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bitmap/t;-><init>()V

    .line 24
    new-instance v17, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct/range {v17 .. v17}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v17, v5

    goto :goto_0

    .line 25
    :cond_1
    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>(Lcom/bumptech/glide/load/resource/bitmap/m;)V

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/z;

    invoke-direct {v0, v9, v3}, Lcom/bumptech/glide/load/resource/bitmap/z;-><init>(Lcom/bumptech/glide/load/resource/bitmap/m;Lg0/b;)V

    move-object/from16 v17, v5

    move-object/from16 v26, v7

    move-object v7, v0

    move-object/from16 v0, v26

    :goto_0
    const-string v5, "Animation"

    move-object/from16 v18, v6

    const/16 v6, 0x1c

    if-lt v13, v6, :cond_2

    .line 27
    const-class v6, Lcom/bumptech/glide/d$b;

    .line 28
    invoke-virtual {v10, v6}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 29
    const-class v6, Ljava/io/InputStream;

    const-class v10, Landroid/graphics/drawable/Drawable;

    move/from16 p3, v13

    .line 30
    invoke-static {v14, v3}, Lm0/a;->f(Ljava/util/List;Lg0/b;)Le0/f;

    move-result-object v13

    .line 31
    invoke-virtual {v12, v5, v6, v10, v13}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    .line 32
    const-class v6, Ljava/nio/ByteBuffer;

    const-class v10, Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-static {v14, v3}, Lm0/a;->a(Ljava/util/List;Lg0/b;)Le0/f;

    move-result-object v13

    .line 34
    invoke-virtual {v12, v5, v6, v10, v13}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    goto :goto_1

    :cond_2
    move/from16 p3, v13

    .line 35
    :goto_1
    new-instance v6, Lm0/f;

    invoke-direct {v6, v2}, Lm0/f;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v10, Lj0/s$c;

    invoke-direct {v10, v11}, Lj0/s$c;-><init>(Landroid/content/res/Resources;)V

    .line 37
    new-instance v13, Lj0/s$d;

    invoke-direct {v13, v11}, Lj0/s$d;-><init>(Landroid/content/res/Resources;)V

    .line 38
    new-instance v2, Lj0/s$b;

    invoke-direct {v2, v11}, Lj0/s$b;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p6, v13

    .line 39
    new-instance v13, Lj0/s$a;

    invoke-direct {v13, v11}, Lj0/s$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p7, v13

    .line 40
    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v13, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Lg0/b;)V

    move-object/from16 v19, v2

    .line 41
    new-instance v2, Lo0/a;

    invoke-direct {v2}, Lo0/a;-><init>()V

    move-object/from16 v20, v2

    .line 42
    new-instance v2, Lo0/d;

    invoke-direct {v2}, Lo0/d;-><init>()V

    move-object/from16 v21, v2

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v22, v2

    .line 44
    const-class v2, Ljava/nio/ByteBuffer;

    move-object/from16 v23, v10

    new-instance v10, Lj0/c;

    invoke-direct {v10}, Lj0/c;-><init>()V

    .line 45
    invoke-virtual {v12, v2, v10}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Le0/a;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v10, Ljava/io/InputStream;

    move-object/from16 v24, v6

    new-instance v6, Lj0/t;

    invoke-direct {v6, v3}, Lj0/t;-><init>(Lg0/b;)V

    .line 46
    invoke-virtual {v2, v10, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Le0/a;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Ljava/nio/ByteBuffer;

    const-class v10, Landroid/graphics/Bitmap;

    move-object/from16 v25, v4

    const-string v4, "Bitmap"

    .line 47
    invoke-virtual {v2, v4, v6, v10, v0}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Ljava/io/InputStream;

    const-class v10, Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {v2, v4, v6, v10, v7}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    .line 49
    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    const-class v2, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/v;

    invoke-direct {v10, v9}, Lcom/bumptech/glide/load/resource/bitmap/v;-><init>(Lcom/bumptech/glide/load/resource/bitmap/m;)V

    invoke-virtual {v12, v4, v2, v6, v10}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    .line 51
    :cond_3
    const-class v2, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {v12, v4, v2, v6, v8}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    const-class v9, Landroid/graphics/Bitmap;

    .line 53
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/c0;->c(Lg0/d;)Le0/f;

    move-result-object v10

    .line 54
    invoke-virtual {v2, v4, v6, v9, v10}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Landroid/graphics/Bitmap;

    const-class v9, Landroid/graphics/Bitmap;

    .line 55
    invoke-static {}, Lj0/v$a;->b()Lj0/v$a;

    move-result-object v10

    invoke-virtual {v2, v6, v9, v10}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Landroid/graphics/Bitmap;

    const-class v9, Landroid/graphics/Bitmap;

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/b0;

    invoke-direct {v10}, Lcom/bumptech/glide/load/resource/bitmap/b0;-><init>()V

    .line 56
    invoke-virtual {v2, v4, v6, v9, v10}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {v2, v6, v13}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Le0/g;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Ljava/nio/ByteBuffer;

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v10, v11, v0}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Le0/f;)V

    const-string v0, "BitmapDrawable"

    .line 58
    invoke-virtual {v2, v0, v6, v9, v10}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Ljava/io/InputStream;

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v10, v11, v7}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Le0/f;)V

    .line 59
    invoke-virtual {v2, v0, v6, v9, v10}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Landroid/os/ParcelFileDescriptor;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v9, v11, v8}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Le0/f;)V

    .line 60
    invoke-virtual {v2, v0, v6, v7, v9}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v6, v1, v13}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lg0/d;Le0/g;)V

    .line 61
    invoke-virtual {v0, v2, v6}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Le0/g;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    const-class v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v7, Lcom/bumptech/glide/load/resource/gif/i;

    invoke-direct {v7, v14, v15, v3}, Lcom/bumptech/glide/load/resource/gif/i;-><init>(Ljava/util/List;Le0/f;Lg0/b;)V

    .line 62
    invoke-virtual {v0, v5, v2, v6, v7}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 63
    invoke-virtual {v0, v5, v2, v6, v15}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v5, Lcom/bumptech/glide/load/resource/gif/c;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/gif/c;-><init>()V

    .line 64
    invoke-virtual {v0, v2, v5}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Le0/g;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    .line 65
    invoke-static {}, Lj0/v$a;->b()Lj0/v$a;

    move-result-object v2

    move-object/from16 v5, v25

    .line 66
    invoke-virtual {v0, v5, v5, v2}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/g;

    invoke-direct {v6, v1}, Lcom/bumptech/glide/load/resource/gif/g;-><init>(Lg0/d;)V

    .line 67
    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Landroid/graphics/drawable/Drawable;

    move-object/from16 v5, v24

    .line 68
    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/x;

    invoke-direct {v6, v5, v1}, Lcom/bumptech/glide/load/resource/bitmap/x;-><init>(Lm0/f;Lg0/d;)V

    .line 69
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, Ll0/a$a;

    invoke-direct {v2}, Ll0/a$a;-><init>()V

    .line 70
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/Registry;->p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Lj0/d$b;

    invoke-direct {v5}, Lj0/d$b;-><init>()V

    .line 71
    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lj0/f$e;

    invoke-direct {v5}, Lj0/f$e;-><init>()V

    .line 72
    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v5, Ln0/a;

    invoke-direct {v5}, Ln0/a;-><init>()V

    .line 73
    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lj0/f$b;

    invoke-direct {v5}, Lj0/f$b;-><init>()V

    .line 74
    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Ljava/io/File;

    .line 75
    invoke-static {}, Lj0/v$a;->b()Lj0/v$a;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/load/data/k$a;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/data/k$a;-><init>(Lg0/b;)V

    .line 76
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/Registry;->p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;

    .line 77
    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;-><init>()V

    invoke-virtual {v12, v0}, Lcom/bumptech/glide/Registry;->p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;

    .line 79
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v4, v23

    .line 80
    invoke-virtual {v12, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v6, v19

    .line 81
    invoke-virtual {v2, v0, v5, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/io/InputStream;

    move-object/from16 v7, v18

    .line 82
    invoke-virtual {v2, v7, v5, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/os/ParcelFileDescriptor;

    .line 83
    invoke-virtual {v2, v7, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    move-object/from16 v5, p6

    .line 84
    invoke-virtual {v2, v7, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v6, p7

    .line 85
    invoke-virtual {v2, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    .line 86
    invoke-virtual {v2, v7, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    .line 87
    invoke-virtual {v2, v0, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lj0/e$c;

    invoke-direct {v4}, Lj0/e$c;-><init>()V

    move-object/from16 v5, v17

    .line 88
    invoke-virtual {v0, v5, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lj0/e$c;

    invoke-direct {v6}, Lj0/e$c;-><init>()V

    .line 89
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lj0/u$c;

    invoke-direct {v4}, Lj0/u$c;-><init>()V

    .line 90
    invoke-virtual {v0, v5, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lj0/u$b;

    invoke-direct {v4}, Lj0/u$b;-><init>()V

    .line 91
    invoke-virtual {v0, v5, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    new-instance v4, Lj0/u$a;

    invoke-direct {v4}, Lj0/u$a;-><init>()V

    .line 92
    invoke-virtual {v0, v5, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lj0/a$c;

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lj0/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    new-instance v5, Lj0/a$b;

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lj0/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 95
    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lk0/b$a;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Lk0/b$a;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lk0/c$a;

    invoke-direct {v5, v6}, Lk0/c$a;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0, v2, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    const/16 v0, 0x1d

    move/from16 v2, p3

    if-lt v2, v0, :cond_5

    .line 98
    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lk0/d$c;

    invoke-direct {v5, v6}, Lk0/d$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v0, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    .line 99
    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lk0/d$b;

    invoke-direct {v5, v6}, Lk0/d$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v0, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    .line 100
    :cond_5
    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lj0/w$d;

    move-object/from16 v7, v22

    invoke-direct {v5, v7}, Lj0/w$d;-><init>(Landroid/content/ContentResolver;)V

    .line 101
    invoke-virtual {v12, v0, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v8, Lj0/w$b;

    invoke-direct {v8, v7}, Lj0/w$b;-><init>(Landroid/content/ContentResolver;)V

    .line 102
    invoke-virtual {v0, v4, v5, v8}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v8, Lj0/w$a;

    invoke-direct {v8, v7}, Lj0/w$a;-><init>(Landroid/content/ContentResolver;)V

    .line 103
    invoke-virtual {v0, v4, v5, v8}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v7, Lj0/x$a;

    invoke-direct {v7}, Lj0/x$a;-><init>()V

    .line 104
    invoke-virtual {v0, v4, v5, v7}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/net/URL;

    const-class v5, Ljava/io/InputStream;

    new-instance v7, Lk0/e$a;

    invoke-direct {v7}, Lk0/e$a;-><init>()V

    .line 105
    invoke-virtual {v0, v4, v5, v7}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/File;

    new-instance v7, Lj0/k$a;

    invoke-direct {v7, v6}, Lj0/k$a;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0, v4, v5, v7}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Lj0/g;

    const-class v5, Ljava/io/InputStream;

    new-instance v7, Lk0/a$a;

    invoke-direct {v7}, Lk0/a$a;-><init>()V

    .line 107
    invoke-virtual {v0, v4, v5, v7}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Lj0/b$a;

    invoke-direct {v5}, Lj0/b$a;-><init>()V

    move-object/from16 v7, v16

    .line 108
    invoke-virtual {v0, v7, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lj0/b$d;

    invoke-direct {v5}, Lj0/b$d;-><init>()V

    .line 109
    invoke-virtual {v0, v7, v4, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/net/Uri;

    .line 110
    invoke-static {}, Lj0/v$a;->b()Lj0/v$a;

    move-result-object v8

    invoke-virtual {v0, v4, v5, v8}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-static {}, Lj0/v$a;->b()Lj0/v$a;

    move-result-object v8

    invoke-virtual {v0, v4, v5, v8}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    new-instance v8, Lm0/g;

    invoke-direct {v8}, Lm0/g;-><init>()V

    .line 112
    invoke-virtual {v0, v4, v5, v8}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lo0/b;

    invoke-direct {v8, v11}, Lo0/b;-><init>(Landroid/content/res/Resources;)V

    .line 113
    invoke-virtual {v0, v4, v5, v8}, Lcom/bumptech/glide/Registry;->q(Ljava/lang/Class;Ljava/lang/Class;Lo0/e;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/Bitmap;

    move-object/from16 v5, v20

    .line 114
    invoke-virtual {v0, v4, v7, v5}, Lcom/bumptech/glide/Registry;->q(Ljava/lang/Class;Ljava/lang/Class;Lo0/e;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/drawable/Drawable;

    new-instance v8, Lo0/c;

    move-object/from16 v9, v21

    invoke-direct {v8, v1, v5, v9}, Lo0/c;-><init>(Lg0/d;Lo0/e;Lo0/e;)V

    .line 115
    invoke-virtual {v0, v4, v7, v8}, Lcom/bumptech/glide/Registry;->q(Ljava/lang/Class;Ljava/lang/Class;Lo0/e;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 116
    invoke-virtual {v0, v4, v7, v9}, Lcom/bumptech/glide/Registry;->q(Ljava/lang/Class;Ljava/lang/Class;Lo0/e;)Lcom/bumptech/glide/Registry;

    const/16 v0, 0x17

    if-lt v2, v0, :cond_6

    .line 117
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/c0;->d(Lg0/d;)Le0/f;

    move-result-object v0

    .line 118
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v1, v2, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    .line 119
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v4, v11, v0}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Le0/f;)V

    invoke-virtual {v12, v1, v2, v4}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Le0/f;)Lcom/bumptech/glide/Registry;

    .line 120
    :cond_6
    new-instance v5, Ls0/g;

    invoke-direct {v5}, Ls0/g;-><init>()V

    .line 121
    new-instance v0, Lcom/bumptech/glide/e;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v12

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move-object/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Lg0/b;Lcom/bumptech/glide/Registry;Ls0/g;Lcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/f;I)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/e;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    .line 1
    sget-boolean v0, Lcom/bumptech/glide/c;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bumptech/glide/c;->m:Z

    .line 3
    invoke-static {p0, p1}, Lcom/bumptech/glide/c;->m(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    const/4 p0, 0x0

    .line 4
    sput-boolean p0, Lcom/bumptech/glide/c;->m:Z

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/c;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    .line 3
    const-class v1, Lcom/bumptech/glide/c;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v2, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/c;

    if-nez v2, :cond_0

    .line 5
    invoke-static {p0, v0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 6
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/c;

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/bumptech/glide/c;->q(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/bumptech/glide/c;->q(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/bumptech/glide/c;->q(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/bumptech/glide/c;->q(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_4
    nop

    const/4 p0, 0x5

    const-string v0, "Glide"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static l(Landroid/content/Context;)Lcom/bumptech/glide/manager/h;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Lv0/j;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->k()Lcom/bumptech/glide/manager/h;

    move-result-object p0

    return-object p0
.end method

.method private static m(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    new-instance v0, Lcom/bumptech/glide/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/c;->n(Landroid/content/Context;Lcom/bumptech/glide/d;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    return-void
.end method

.method private static n(Landroid/content/Context;Lcom/bumptech/glide/d;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lq0/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    new-instance v0, Lq0/d;

    invoke-direct {v0, p0}, Lq0/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lq0/d;->a()Ljava/util/List;

    move-result-object v0

    :cond_1
    const/4 v1, 0x3

    const-string v2, "Glide"

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6
    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 8
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq0/b;

    .line 10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq0/b;

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->e()Lcom/bumptech/glide/manager/h$b;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 18
    :goto_2
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/d;->c(Lcom/bumptech/glide/manager/h$b;)V

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0/b;

    .line 20
    invoke-interface {v2, p0, p1}, Lq0/b;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    .line 21
    invoke-virtual {p2, p0, p1}, Lq0/a;->b(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    .line 22
    :cond_8
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p1

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/b;

    .line 24
    :try_start_0
    iget-object v2, p1, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/Registry;

    invoke-interface {v1, p0, p1, v2}, Lq0/b;->b(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    .line 27
    iget-object v0, p1, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/Registry;

    invoke-virtual {p2, p0, p1, v0}, Lq0/c;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    .line 28
    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 29
    sput-object p1, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/c;

    return-void
.end method

.method private static q(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static t(Landroid/app/Activity;)Lcom/bumptech/glide/h;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/h;->j(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/content/Context;)Lcom/bumptech/glide/h;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/h;->l(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/view/View;)Lcom/bumptech/glide/h;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/h;->m(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/h;->n(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/h;->o(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    invoke-static {}, Lv0/k;->b()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Lh0/h;

    invoke-interface {v0}, Lh0/h;->b()V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lg0/d;

    invoke-interface {v0}, Lg0/d;->b()V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Lg0/b;

    invoke-interface {v0}, Lg0/b;->b()V

    return-void
.end method

.method public e()Lg0/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Lg0/b;

    return-object v0
.end method

.method public f()Lg0/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lg0/d;

    return-object v0
.end method

.method g()Lp0/b;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Lp0/b;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method i()Lcom/bumptech/glide/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/e;

    return-object v0
.end method

.method public j()Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/manager/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/manager/h;

    return-object v0
.end method

.method o(Lcom/bumptech/glide/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->b()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->r(I)V

    return-void
.end method

.method p(Ls0/k;)Z
    .locals 3
    .param p1    # Ls0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/k<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/h;

    .line 3
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/h;->y(Ls0/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 4
    monitor-exit v0

    return p1

    .line 5
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r(I)V
    .locals 3

    .line 1
    invoke-static {}, Lv0/k;->b()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/h;

    .line 4
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/h;->onTrimMemory(I)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Lh0/h;

    invoke-interface {v0, p1}, Lh0/h;->a(I)V

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lg0/d;

    invoke-interface {v0, p1}, Lg0/d;->a(I)V

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Lg0/b;

    invoke-interface {v0, p1}, Lg0/b;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method s(Lcom/bumptech/glide/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
