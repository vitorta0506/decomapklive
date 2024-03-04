.class public Lorg/apache/http/conn/ssl/b;
.super Lorg/apache/http/conn/ssl/a;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lorg/apache/http/conn/ssl/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/conn/ssl/b;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/b;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/b;->a:Lorg/apache/http/conn/ssl/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ALLOW_ALL"

    return-object v0
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method
