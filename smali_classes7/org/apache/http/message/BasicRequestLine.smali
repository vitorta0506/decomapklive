.class public Lorg/apache/http/message/BasicRequestLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/l;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2701312e8d8938a9L


# instance fields
.field private final method:Ljava/lang/String;

.field private final protoversion:Lorg/apache/http/ProtocolVersion;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Method"

    .line 2
    invoke-static {p1, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/message/BasicRequestLine;->method:Ljava/lang/String;

    const-string p1, "URI"

    .line 3
    invoke-static {p2, p1}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/message/BasicRequestLine;->uri:Ljava/lang/String;

    const-string p1, "Version"

    .line 4
    invoke-static {p3, p1}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/ProtocolVersion;

    iput-object p1, p0, Lorg/apache/http/message/BasicRequestLine;->protoversion:Lorg/apache/http/ProtocolVersion;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/message/BasicRequestLine;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/message/BasicRequestLine;->protoversion:Lorg/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/message/BasicRequestLine;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lsi/d;->b:Lsi/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lsi/d;->g(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/l;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
