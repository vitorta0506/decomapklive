.class final Lorg/apache/commons/logging/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic a:Ljava/lang/ClassLoader;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/logging/d;->a:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lorg/apache/commons/logging/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/d;->a:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/logging/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/d;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
