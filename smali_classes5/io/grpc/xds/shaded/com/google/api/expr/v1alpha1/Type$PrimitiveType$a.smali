.class Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/u0$d<",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lcom/google/protobuf/u0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType$a;->b(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;
    .locals 0

    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;->forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;

    move-result-object p1

    return-object p1
.end method
