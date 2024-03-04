.class final La5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/l;


# instance fields
.field final synthetic a:La5/h;


# direct methods
.method constructor <init>(La5/h;)V
    .locals 0

    iput-object p1, p0, La5/g;->a:La5/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La5/m;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, La5/g;->a:La5/h;

    iget-object p1, p1, La5/h;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    iget-object p1, p0, La5/g;->a:La5/h;

    iget-object p1, p1, La5/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
