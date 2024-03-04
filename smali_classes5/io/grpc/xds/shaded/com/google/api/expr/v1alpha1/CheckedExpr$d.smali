.class final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->e:Lcom/google/protobuf/Descriptors$b;

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->INT64:Lcom/google/protobuf/WireFormat$FieldType;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    move-result-object v4

    .line 4
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/protobuf/e1;->k(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/google/protobuf/e1;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;->a:Lcom/google/protobuf/e1;

    return-void
.end method
