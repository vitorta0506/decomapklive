.class public final Lrb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lrb/b;

.field private c:Ljava/io/InputStream;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lub/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lrb/b;->b:Lrb/b;

    iput-object v0, p0, Lrb/f;->b:Lrb/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrb/f;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrb/f;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lrb/e;
    .locals 9

    new-instance v8, Ltb/d;

    iget-object v2, p0, Lrb/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lrb/f;->b:Lrb/b;

    iget-object v4, p0, Lrb/f;->c:Ljava/io/InputStream;

    iget-object v5, p0, Lrb/f;->d:Ljava/util/Map;

    iget-object v6, p0, Lrb/f;->e:Ljava/util/List;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ltb/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lrb/b;Ljava/io/InputStream;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-object v8
.end method

.method public b(Ljava/io/InputStream;)Lrb/f;
    .locals 0

    iput-object p1, p0, Lrb/f;->c:Ljava/io/InputStream;

    return-object p0
.end method
