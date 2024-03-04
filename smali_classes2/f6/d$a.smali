.class Lf6/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf6/d;->i()Ld6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf6/d;


# direct methods
.method constructor <init>(Lf6/d;)V
    .locals 0

    iput-object p1, p0, Lf6/d$a;->a:Lf6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/Writer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lf6/e;

    iget-object v0, p0, Lf6/d$a;->a:Lf6/d;

    .line 2
    invoke-static {v0}, Lf6/d;->e(Lf6/d;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lf6/d$a;->a:Lf6/d;

    invoke-static {v0}, Lf6/d;->f(Lf6/d;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lf6/d$a;->a:Lf6/d;

    invoke-static {v0}, Lf6/d;->g(Lf6/d;)Ld6/c;

    move-result-object v4

    iget-object v0, p0, Lf6/d$a;->a:Lf6/d;

    invoke-static {v0}, Lf6/d;->h(Lf6/d;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lf6/e;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Ld6/c;Z)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {v6, p1, p2}, Lf6/e;->h(Ljava/lang/Object;Z)Lf6/e;

    .line 4
    invoke-virtual {v6}, Lf6/e;->p()V

    return-void
.end method
