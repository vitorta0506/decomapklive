.class public Lorg/apache/http/message/BasicHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/c;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_HEADER_ELEMENTS:[Lorg/apache/http/d;

.field private static final serialVersionUID:J = -0x4b516aaf286317beL


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/http/d;

    sput-object v0, Lorg/apache/http/message/BasicHeader;->EMPTY_HEADER_ELEMENTS:[Lorg/apache/http/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    .line 2
    invoke-static {p1, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/message/BasicHeader;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/apache/http/message/BasicHeader;->value:Ljava/lang/String;

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

.method public getElements()[Lorg/apache/http/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsi/c;->d(Ljava/lang/String;Lsi/f;)[Lorg/apache/http/d;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lorg/apache/http/message/BasicHeader;->EMPTY_HEADER_ELEMENTS:[Lorg/apache/http/d;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/message/BasicHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/message/BasicHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lsi/d;->b:Lsi/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lsi/d;->f(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/c;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
