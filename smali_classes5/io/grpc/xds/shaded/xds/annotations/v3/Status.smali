.class public final Lio/grpc/xds/shaded/xds/annotations/v3/Status;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/xds/annotations/v3/Status$StatusAnnotation;,
        Lio/grpc/xds/shaded/xds/annotations/v3/Status$FieldStatusAnnotation;,
        Lio/grpc/xds/shaded/xds/annotations/v3/Status$MessageStatusAnnotation;,
        Lio/grpc/xds/shaded/xds/annotations/v3/Status$FileStatusAnnotation;,
        Lio/grpc/xds/shaded/xds/annotations/v3/Status$PackageVersionStatus;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "Lio/grpc/xds/shaded/xds/annotations/v3/Status$FileStatusAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$MessageOptions;",
            "Lio/grpc/xds/shaded/xds/annotations/v3/Status$MessageStatusAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Lio/grpc/xds/shaded/xds/annotations/v3/Status$FieldStatusAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/protobuf/Descriptors$b;

.field private static final e:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static final f:Lcom/google/protobuf/Descriptors$b;

.field private static final g:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static final h:Lcom/google/protobuf/Descriptors$b;

.field private static final i:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static final j:Lcom/google/protobuf/Descriptors$b;

.field private static final k:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static l:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status$FileStatusAnnotation;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status$FileStatusAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/xds/annotations/v3/Status$FileStatusAnnotation;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    .line 4
    const-class v1, Lio/grpc/xds/shaded/xds/annotations/v3/Status$MessageStatusAnnotation;

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status$MessageStatusAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/xds/annotations/v3/Status$MessageStatusAnnotation;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v1

    sput-object v1, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->b:Lcom/google/protobuf/GeneratedMessage$l;

    .line 7
    const-class v2, Lio/grpc/xds/shaded/xds/annotations/v3/Status$FieldStatusAnnotation;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status$FieldStatusAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/xds/annotations/v3/Status$FieldStatusAnnotation;

    move-result-object v3

    .line 9
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v2

    sput-object v2, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->c:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v3, "\n\u001fxds/annotations/v3/status.proto\u0012\u0012xds.annotations.v3\u001a google/protobuf/descriptor.proto\"0\n\u0014FileStatusAnnotation\u0012\u0018\n\u0010work_in_progress\u0018\u0001 \u0001(\u0008\"3\n\u0017MessageStatusAnnotation\u0012\u0018\n\u0010work_in_progress\u0018\u0001 \u0001(\u0008\"1\n\u0015FieldStatusAnnotation\u0012\u0018\n\u0010work_in_progress\u0018\u0001 \u0001(\u0008\"v\n\u0010StatusAnnotation\u0012\u0018\n\u0010work_in_progress\u0018\u0001 \u0001(\u0008\u0012H\n\u0016package_version_status\u0018\u0002 \u0001(\u000e2(.xds.annotations.v3.PackageVersionStatus*]\n\u0014PackageVersionStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\n\n\u0006FROZEN\u0010\u0001\u0012\n\n\u0006ACTIVE\u0010\u0002\u0012 \n\u001cNEXT_MAJOR_VERSION_CANDIDATE\u0010\u0003:^\n\u000bfile_status\u0012\u001c.google.protobuf.FileOptions\u0018\u00ea\u00c8\u0094l \u0001(\u000b2(.xds.annotations.v3.FileStatusAnnotation:g\n\u000emessage_status\u0012\u001f.google.protobuf.MessageOptions\u0018\u00ea\u00c8\u0094l \u0001(\u000b2+.xds.annotations.v3.MessageStatusAnnotation:a\n\u000cfield_status\u0012\u001d.google.protobuf.FieldOptions\u0018\u00ea\u00c8\u0094l \u0001(\u000b2).xds.annotations.v3.FieldStatusAnnotationB+Z)github.com/cncf/xds/go/xds/annotations/v3b\u0006proto3"

    .line 10
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 12
    invoke-static {v3, v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    sput-object v3, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$b;

    sput-object v3, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->d:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "WorkInProgress"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v5, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->e:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$b;

    sput-object v3, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->f:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v5, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->g:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$b;

    sput-object v3, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->h:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v8, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v8, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$b;

    sput-object v3, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->j:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v8, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "PackageVersionStatus"

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v3, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v8, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->k:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    sget-object v3, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v3}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 22
    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 23
    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 24
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->d:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->e:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->f:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->g:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->h:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-object v0
.end method

.method static synthetic g()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->j:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method static synthetic h()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->k:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-object v0
.end method

.method public static i()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
