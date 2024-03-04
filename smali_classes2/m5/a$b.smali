.class final Lm5/a$b;
.super Lm5/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm5/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lm5/k;
    .locals 9

    .line 1
    iget-object v0, p0, Lm5/a$b;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/a$b;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/a$b;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/a$b;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/a$b;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/a$b;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lm5/a;

    iget-object v1, p0, Lm5/a$b;->a:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lm5/a$b;->b:Ljava/lang/Integer;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lm5/a$b;->c:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lm5/a$b;->d:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lm5/a$b;->e:Ljava/lang/Integer;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lm5/a$b;->f:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lm5/a;-><init>(IIIIIZLm5/a$a;)V

    return-object v0

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v1, p0, Lm5/a$b;->a:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " minRpcsPerChannel"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    iget-object v1, p0, Lm5/a$b;->b:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const-string v1, " maxRpcsPerChannel"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_3
    iget-object v1, p0, Lm5/a$b;->c:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const-string v1, " minChannelCount"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    iget-object v1, p0, Lm5/a$b;->d:Ljava/lang/Integer;

    if-nez v1, :cond_5

    const-string v1, " maxChannelCount"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_5
    iget-object v1, p0, Lm5/a$b;->e:Ljava/lang/Integer;

    if-nez v1, :cond_6

    const-string v1, " initialChannelCount"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_6
    iget-object v1, p0, Lm5/a$b;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    const-string v1, " preemptiveRefreshEnabled"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(I)Lm5/k$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lm5/a$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(I)Lm5/k$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lm5/a$b;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(I)Lm5/k$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lm5/a$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public f(I)Lm5/k$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lm5/a$b;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public g(I)Lm5/k$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lm5/a$b;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public h(Z)Lm5/k$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lm5/a$b;->f:Ljava/lang/Boolean;

    return-object p0
.end method
