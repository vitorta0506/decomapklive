.class public Ly7/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly7/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly7/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Ly7/m;->b:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly7/m;->c:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly7/m;->a:Ljava/lang/String;

    return-void
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Ly7/m;->b:J

    return-void
.end method