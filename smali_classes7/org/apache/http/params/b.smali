.class public final Lorg/apache/http/params/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lorg/apache/http/params/c;)I
    .locals 2

    const-string v0, "HTTP parameters"

    .line 1
    invoke-static {p0, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/c;->getIntParameter(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(Lorg/apache/http/params/c;)I
    .locals 2

    const-string v0, "HTTP parameters"

    .line 1
    invoke-static {p0, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.timeout"

    const/4 v1, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/c;->getIntParameter(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
