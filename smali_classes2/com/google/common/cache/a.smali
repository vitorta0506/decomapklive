.class public final Lcom/google/common/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/b;


# instance fields
.field private final a:Lcom/google/common/cache/n;

.field private final b:Lcom/google/common/cache/n;

.field private final c:Lcom/google/common/cache/n;

.field private final d:Lcom/google/common/cache/n;

.field private final e:Lcom/google/common/cache/n;

.field private final f:Lcom/google/common/cache/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/cache/o;->a()Lcom/google/common/cache/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a;->a:Lcom/google/common/cache/n;

    .line 3
    invoke-static {}, Lcom/google/common/cache/o;->a()Lcom/google/common/cache/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a;->b:Lcom/google/common/cache/n;

    .line 4
    invoke-static {}, Lcom/google/common/cache/o;->a()Lcom/google/common/cache/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a;->c:Lcom/google/common/cache/n;

    .line 5
    invoke-static {}, Lcom/google/common/cache/o;->a()Lcom/google/common/cache/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a;->d:Lcom/google/common/cache/n;

    .line 6
    invoke-static {}, Lcom/google/common/cache/o;->a()Lcom/google/common/cache/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a;->e:Lcom/google/common/cache/n;

    .line 7
    invoke-static {}, Lcom/google/common/cache/o;->a()Lcom/google/common/cache/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a;->f:Lcom/google/common/cache/n;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/cache/a;->a:Lcom/google/common/cache/n;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/n;->add(J)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/cache/a;->b:Lcom/google/common/cache/n;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/n;->add(J)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/a;->f:Lcom/google/common/cache/n;

    invoke-interface {v0}, Lcom/google/common/cache/n;->increment()V

    return-void
.end method

.method public d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/a;->d:Lcom/google/common/cache/n;

    invoke-interface {v0}, Lcom/google/common/cache/n;->increment()V

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/a;->e:Lcom/google/common/cache/n;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/n;->add(J)V

    return-void
.end method

.method public e(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/a;->c:Lcom/google/common/cache/n;

    invoke-interface {v0}, Lcom/google/common/cache/n;->increment()V

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/a;->e:Lcom/google/common/cache/n;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/n;->add(J)V

    return-void
.end method
