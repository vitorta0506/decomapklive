.class Lh2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/d;->l(Lc2/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc2/b0;

.field final synthetic b:Lh2/d;


# direct methods
.method constructor <init>(Lh2/d;Lc2/b0;)V
    .locals 0

    iput-object p1, p0, Lh2/d$a;->b:Lh2/d;

    iput-object p2, p0, Lh2/d$a;->a:Lc2/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(J)Lc2/b0$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lh2/d$a;->a:Lc2/b0;

    invoke-interface {v0, p1, p2}, Lc2/b0;->c(J)Lc2/b0$a;

    move-result-object p1

    .line 2
    new-instance p2, Lc2/b0$a;

    new-instance v0, Lc2/c0;

    iget-object v1, p1, Lc2/b0$a;->a:Lc2/c0;

    iget-wide v2, v1, Lc2/c0;->a:J

    iget-wide v4, v1, Lc2/c0;->b:J

    iget-object v1, p0, Lh2/d$a;->b:Lh2/d;

    .line 3
    invoke-static {v1}, Lh2/d;->a(Lh2/d;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lc2/c0;-><init>(JJ)V

    new-instance v1, Lc2/c0;

    iget-object p1, p1, Lc2/b0$a;->b:Lc2/c0;

    iget-wide v2, p1, Lc2/c0;->a:J

    iget-wide v4, p1, Lc2/c0;->b:J

    iget-object p1, p0, Lh2/d$a;->b:Lh2/d;

    .line 4
    invoke-static {p1}, Lh2/d;->a(Lh2/d;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lc2/c0;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lc2/b0$a;-><init>(Lc2/c0;Lc2/c0;)V

    return-object p2
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lh2/d$a;->a:Lc2/b0;

    invoke-interface {v0}, Lc2/b0;->e()Z

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lh2/d$a;->a:Lc2/b0;

    invoke-interface {v0}, Lc2/b0;->i()J

    move-result-wide v0

    return-wide v0
.end method
