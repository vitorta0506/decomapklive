.class public final Lcom/google/geo/type/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\n\u001egoogle/geo/type/viewport.proto\u0012\u000fgoogle.geo.type\u001a\u0018google/type/latlng.proto\"O\n\u0008Viewport\u0012 \n\u0003low\u0018\u0001 \u0001(\u000b2\u0013.google.type.LatLng\u0012!\n\u0004high\u0018\u0002 \u0001(\u000b2\u0013.google.type.LatLngBo\n\u0013com.google.geo.typeB\rViewportProtoP\u0001Z@google.golang.org/genproto/googleapis/geo/type/viewport;viewport\u00a2\u0002\u0004GGTPb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/type/k;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/geo/type/a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4
    invoke-static {}, Lcom/google/geo/type/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/geo/type/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 5
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Low"

    const-string v3, "High"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/geo/type/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 6
    invoke-static {}, Lcom/google/type/k;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/geo/type/a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
