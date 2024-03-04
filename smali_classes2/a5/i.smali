.class final La5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/k;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:La5/t;

.field final synthetic c:La5/n;


# direct methods
.method constructor <init>(La5/n;Ljava/util/Set;La5/t;)V
    .locals 0

    iput-object p1, p0, La5/i;->c:La5/n;

    iput-object p2, p0, La5/i;->a:Ljava/util/Set;

    iput-object p3, p0, La5/i;->b:La5/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La5/i;->a:Ljava/util/Set;

    iget-object v1, p0, La5/i;->c:La5/n;

    iget-object v2, p0, La5/i;->b:La5/t;

    invoke-static {v1, p2, v2, p1}, La5/n;->a(La5/n;Ljava/util/Set;La5/t;Ljava/util/zip/ZipFile;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
