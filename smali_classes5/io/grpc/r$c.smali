.class final enum Lio/grpc/r$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/r$c;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/grpc/r$c;

.field private static final synthetic b:[Lio/grpc/r$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/r$c;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/r$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/r$c;->a:Lio/grpc/r$c;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/grpc/r$c;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lio/grpc/r$c;->b:[Lio/grpc/r$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/r$c;
    .locals 1

    const-class v0, Lio/grpc/r$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/r$c;

    return-object p0
.end method

.method public static values()[Lio/grpc/r$c;
    .locals 1

    sget-object v0, Lio/grpc/r$c;->b:[Lio/grpc/r$c;

    invoke-virtual {v0}, [Lio/grpc/r$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/r$c;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Context.DirectExecutor"

    return-object v0
.end method
