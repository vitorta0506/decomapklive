.class final Lorg/apache/commons/logging/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/logging/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/logging/c;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/logging/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/logging/c;->b:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lorg/apache/commons/logging/h;->d(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
