.class final La5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/k;


# instance fields
.field final synthetic a:La5/t;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:La5/n;


# direct methods
.method constructor <init>(La5/n;La5/t;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, La5/h;->d:La5/n;

    iput-object p2, p0, La5/h;->a:La5/t;

    iput-object p3, p0, La5/h;->b:Ljava/util/Set;

    iput-object p4, p0, La5/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, La5/h;->d:La5/n;

    iget-object v0, p0, La5/h;->a:La5/t;

    new-instance v1, La5/g;

    invoke-direct {v1, p0}, La5/g;-><init>(La5/h;)V

    invoke-static {p1, v0, p2, v1}, La5/n;->d(La5/n;La5/t;Ljava/util/Set;La5/l;)V

    return-void
.end method
