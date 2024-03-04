.class public final Lh2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/n;


# instance fields
.field private final a:J

.field private final b:Lc2/n;


# direct methods
.method public constructor <init>(JLc2/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lh2/d;->a:J

    .line 3
    iput-object p3, p0, Lh2/d;->b:Lc2/n;

    return-void
.end method

.method static synthetic a(Lh2/d;)J
    .locals 2

    iget-wide v0, p0, Lh2/d;->a:J

    return-wide v0
.end method


# virtual methods
.method public l(Lc2/b0;)V
    .locals 2

    iget-object v0, p0, Lh2/d;->b:Lc2/n;

    new-instance v1, Lh2/d$a;

    invoke-direct {v1, p0, p1}, Lh2/d$a;-><init>(Lh2/d;Lc2/b0;)V

    invoke-interface {v0, v1}, Lc2/n;->l(Lc2/b0;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lh2/d;->b:Lc2/n;

    invoke-interface {v0}, Lc2/n;->o()V

    return-void
.end method

.method public q(II)Lc2/e0;
    .locals 1

    iget-object v0, p0, Lh2/d;->b:Lc2/n;

    invoke-interface {v0, p1, p2}, Lc2/n;->q(II)Lc2/e0;

    move-result-object p1

    return-object p1
.end method
