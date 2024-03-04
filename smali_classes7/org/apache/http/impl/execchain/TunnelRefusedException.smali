.class public Lorg/apache/http/impl/execchain/TunnelRefusedException;
.super Lorg/apache/http/HttpException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL


# instance fields
.field private final response:Lorg/apache/http/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lorg/apache/http/impl/execchain/TunnelRefusedException;->response:Lorg/apache/http/j;

    return-void
.end method


# virtual methods
.method public getResponse()Lorg/apache/http/j;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/execchain/TunnelRefusedException;->response:Lorg/apache/http/j;

    return-object v0
.end method
