.class final Lvb/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvb/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrb/e;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lrb/e;->c()Lrb/b;

    move-result-object v0

    sget-object v1, Lrb/b;->c:Lrb/b;

    invoke-virtual {v0, v1}, Lrb/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/service/analytics/collector_url_cn"

    :goto_0
    invoke-interface {p1, v0}, Lrb/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lrb/e;->c()Lrb/b;

    move-result-object v0

    sget-object v1, Lrb/b;->e:Lrb/b;

    invoke-virtual {v0, v1}, Lrb/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/service/analytics/collector_url_ru"

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lrb/e;->c()Lrb/b;

    move-result-object v0

    sget-object v1, Lrb/b;->d:Lrb/b;

    invoke-virtual {v0, v1}, Lrb/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/service/analytics/collector_url_de"

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lrb/e;->c()Lrb/b;

    move-result-object v0

    sget-object v1, Lrb/b;->f:Lrb/b;

    invoke-virtual {v0, v1}, Lrb/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/service/analytics/collector_url_sg"

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
