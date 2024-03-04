.class public final Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FileMigrateAnnotation;,
        Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FieldMigrateAnnotation;,
        Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$MessageOptions;",
            "Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FieldMigrateAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$EnumOptions;",
            "Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;",
            "Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FileMigrateAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/protobuf/Descriptors$b;

.field private static final g:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static final h:Lcom/google/protobuf/Descriptors$b;

.field private static final i:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static final j:Lcom/google/protobuf/Descriptors$b;

.field private static final k:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static l:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->a:Lcom/google/protobuf/GeneratedMessage$l;

    .line 4
    const-class v1, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FieldMigrateAnnotation;

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FieldMigrateAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FieldMigrateAnnotation;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v1

    sput-object v1, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    .line 7
    const-class v2, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;

    move-result-object v3

    .line 9
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v2

    sput-object v2, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    .line 10
    const-class v3, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$MigrateAnnotation;

    move-result-object v4

    .line 12
    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v3

    sput-object v3, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->d:Lcom/google/protobuf/GeneratedMessage$l;

    .line 13
    const-class v4, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FileMigrateAnnotation;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FileMigrateAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/xds/annotations/v3/Migrate$FileMigrateAnnotation;

    move-result-object v5

    .line 15
    invoke-static {v4, v5}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v4

    sput-object v4, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v5, "\n xds/annotations/v3/migrate.proto\u0012\u0012xds.annotations.v3\u001a google/protobuf/descriptor.proto\"#\n\u0011MigrateAnnotation\u0012\u000e\n\u0006rename\u0018\u0001 \u0001(\t\"A\n\u0016FieldMigrateAnnotation\u0012\u000e\n\u0006rename\u0018\u0001 \u0001(\t\u0012\u0017\n\u000foneof_promotion\u0018\u0002 \u0001(\t\"0\n\u0015FileMigrateAnnotation\u0012\u0017\n\u000fmove_to_package\u0018\u0002 \u0001(\t:b\n\u000fmessage_migrate\u0012\u001f.google.protobuf.MessageOptions\u0018\u00ce\u00e9\u00ed5 \u0001(\u000b2%.xds.annotations.v3.MigrateAnnotation:c\n\rfield_migrate\u0012\u001d.google.protobuf.FieldOptions\u0018\u00ce\u00e9\u00ed5 \u0001(\u000b2*.xds.annotations.v3.FieldMigrateAnnotation:\\\n\u000cenum_migrate\u0012\u001c.google.protobuf.EnumOptions\u0018\u00ce\u00e9\u00ed5 \u0001(\u000b2%.xds.annotations.v3.MigrateAnnotation:g\n\u0012enum_value_migrate\u0012!.google.protobuf.EnumValueOptions\u0018\u00ce\u00e9\u00ed5 \u0001(\u000b2%.xds.annotations.v3.MigrateAnnotation:`\n\u000cfile_migrate\u0012\u001c.google.protobuf.FileOptions\u0018\u00ce\u00e9\u00ed5 \u0001(\u000b2).xds.annotations.v3.FileMigrateAnnotationB+Z)github.com/cncf/xds/go/xds/annotations/v3b\u0006proto3"

    .line 16
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 18
    invoke-static {v5, v7}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    sput-object v5, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$b;

    sput-object v5, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->f:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v7, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Rename"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v5, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v7, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->g:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$b;

    sput-object v5, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->h:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v7, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "OneofPromotion"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v7, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->i:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$b;

    sput-object v5, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->j:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v8, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "MoveToPackage"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v5, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v8, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->k:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    sget-object v5, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v5}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 26
    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 27
    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 28
    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3, v0}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 29
    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v4, v0}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 30
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->f:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->g:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->h:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->i:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->j:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->k:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-object v0
.end method

.method public static g()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Migrate;->l:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
