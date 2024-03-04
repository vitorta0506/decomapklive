.class public final Lk0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/n;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/d$a;,
        Lk0/d$b;,
        Lk0/d$c;,
        Lk0/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj0/n<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lj0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/n<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final c:Lj0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lj0/n;Lj0/n;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lj0/n<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lj0/n<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lk0/d;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lk0/d;->b:Lj0/n;

    .line 4
    iput-object p3, p0, Lk0/d;->c:Lj0/n;

    .line 5
    iput-object p4, p0, Lk0/d;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILe0/e;)Lj0/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/d;->c(Landroid/net/Uri;IILe0/e;)Lj0/n$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lk0/d;->d(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/net/Uri;IILe0/e;)Lj0/n$a;
    .locals 13
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Le0/e;",
            ")",
            "Lj0/n$a<",
            "TDataT;>;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Lj0/n$a;

    new-instance v2, Lu0/d;

    move-object v7, p1

    invoke-direct {v2, p1}, Lu0/d;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lk0/d$d;

    iget-object v4, v0, Lk0/d;->a:Landroid/content/Context;

    iget-object v5, v0, Lk0/d;->b:Lj0/n;

    iget-object v6, v0, Lk0/d;->c:Lj0/n;

    iget-object v11, v0, Lk0/d;->d:Ljava/lang/Class;

    move-object v3, v12

    move v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v11}, Lk0/d$d;-><init>(Landroid/content/Context;Lj0/n;Lj0/n;Landroid/net/Uri;IILe0/e;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v12}, Lj0/n$a;-><init>(Le0/b;Lcom/bumptech/glide/load/data/d;)V

    return-object v1
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lf0/b;->b(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
