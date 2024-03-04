.class Lig/h;
.super Lig/o0$b;
.source "SourceFile"


# instance fields
.field private final c:Lio/grpc/Status;


# direct methods
.method public constructor <init>(Lio/grpc/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lig/o0$b;-><init>()V

    .line 2
    iput-object p1, p0, Lig/h;->c:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public d()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lig/h;->c:Lio/grpc/Status;

    return-object v0
.end method
