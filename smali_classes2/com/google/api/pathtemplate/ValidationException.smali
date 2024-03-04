.class public Lcom/google/api/pathtemplate/ValidationException;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/pathtemplate/ValidationException$b;
    }
.end annotation


# static fields
.field private static contextLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Stack<",
            "Lcom/google/api/pathtemplate/ValidationException$b<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/api/pathtemplate/ValidationException;->contextLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/api/pathtemplate/ValidationException;->contextLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-static {v0, p1, p2}, Lcom/google/api/pathtemplate/ValidationException;->message(Ljava/util/Stack;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs message(Ljava/util/Stack;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/google/api/pathtemplate/ValidationException$b<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/pathtemplate/ValidationException$b;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/google/api/pathtemplate/ValidationException$b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static popCurrentThreadValidationContext()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/pathtemplate/ValidationException;->contextLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static pushCurrentThreadValidationContext(Lcom/google/api/pathtemplate/ValidationException$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/pathtemplate/ValidationException$b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/pathtemplate/ValidationException;->contextLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 3
    sget-object v1, Lcom/google/api/pathtemplate/ValidationException;->contextLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static pushCurrentThreadValidationContext(Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/api/pathtemplate/ValidationException$a;

    invoke-direct {v0, p0}, Lcom/google/api/pathtemplate/ValidationException$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/api/pathtemplate/ValidationException;->pushCurrentThreadValidationContext(Lcom/google/api/pathtemplate/ValidationException$b;)V

    return-void
.end method
