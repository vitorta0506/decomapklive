.class Lug/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lug/s;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lug/s;


# direct methods
.method constructor <init>(Lug/s;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lug/s$b;->b:Lug/s;

    iput-object p2, p0, Lug/s$b;->a:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lug/s$b;->a:Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lug/s$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
