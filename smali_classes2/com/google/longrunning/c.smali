.class public final Lcom/google/longrunning/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Lcom/google/longrunning/OperationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/protobuf/Descriptors$b;

.field static final c:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final d:Lcom/google/protobuf/Descriptors$b;

.field static final e:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final f:Lcom/google/protobuf/Descriptors$b;

.field static final g:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final h:Lcom/google/protobuf/Descriptors$b;

.field static final i:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final j:Lcom/google/protobuf/Descriptors$b;

.field static final k:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final l:Lcom/google/protobuf/Descriptors$b;

.field static final m:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final n:Lcom/google/protobuf/Descriptors$b;

.field static final o:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final p:Lcom/google/protobuf/Descriptors$b;

.field static final q:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static r:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-class v0, Lcom/google/longrunning/OperationInfo;

    .line 2
    invoke-static {}, Lcom/google/longrunning/OperationInfo;->getDefaultInstance()Lcom/google/longrunning/OperationInfo;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lcom/google/longrunning/c;->a:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v1, "\n#google/longrunning/operations.proto\u0012\u0012google.longrunning\u001a\u001cgoogle/api/annotations.proto\u001a\u0017google/api/client.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a\u0017google/rpc/status.proto\u001a google/protobuf/descriptor.proto\"\u00a8\u0001\n\tOperation\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012&\n\u0008metadata\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u0012\u000c\n\u0004done\u0018\u0003 \u0001(\u0008\u0012#\n\u0005error\u0018\u0004 \u0001(\u000b2\u0012.google.rpc.StatusH\u0000\u0012(\n\u0008response\u0018\u0005 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\u0008\n\u0006result\"#\n\u0013GetOperationRequest\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\"\\\n\u0015ListOperationsRequest\u0012\u000c\n\u0004name\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006filter\u0018\u0001 \u0001(\t\u0012\u0011\n\tpage_size\u0018\u0002 \u0001(\u0005\u0012\u0012\n\npage_token\u0018\u0003 \u0001(\t\"d\n\u0016ListOperationsResponse\u00121\n\noperations\u0018\u0001 \u0003(\u000b2\u001d.google.longrunning.Operation\u0012\u0017\n\u000fnext_page_token\u0018\u0002 \u0001(\t\"&\n\u0016CancelOperationRequest\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\"&\n\u0016DeleteOperationRequest\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\"P\n\u0014WaitOperationRequest\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012*\n\u0007timeout\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\"=\n\rOperationInfo\u0012\u0015\n\rresponse_type\u0018\u0001 \u0001(\t\u0012\u0015\n\rmetadata_type\u0018\u0002 \u0001(\t2\u00aa\u0005\n\nOperations\u0012\u0094\u0001\n\u000eListOperations\u0012).google.longrunning.ListOperationsRequest\u001a*.google.longrunning.ListOperationsResponse\"+\u0082\u00d3\u00e4\u0093\u0002\u0017\u0012\u0015/v1/{name=operations}\u00daA\u000bname,filter\u0012\u007f\n\u000cGetOperation\u0012\'.google.longrunning.GetOperationRequest\u001a\u001d.google.longrunning.Operation\"\'\u0082\u00d3\u00e4\u0093\u0002\u001a\u0012\u0018/v1/{name=operations/**}\u00daA\u0004name\u0012~\n\u000fDeleteOperation\u0012*.google.longrunning.DeleteOperationRequest\u001a\u0016.google.protobuf.Empty\"\'\u0082\u00d3\u00e4\u0093\u0002\u001a*\u0018/v1/{name=operations/**}\u00daA\u0004name\u0012\u0088\u0001\n\u000fCancelOperation\u0012*.google.longrunning.CancelOperationRequest\u001a\u0016.google.protobuf.Empty\"1\u0082\u00d3\u00e4\u0093\u0002$\"\u001f/v1/{name=operations/**}:cancel:\u0001*\u00daA\u0004name\u0012Z\n\rWaitOperation\u0012(.google.longrunning.WaitOperationRequest\u001a\u001d.google.longrunning.Operation\"\u0000\u001a\u001d\u00caA\u001alongrunning.googleapis.com:Z\n\u000eoperation_info\u0012\u001e.google.protobuf.MethodOptions\u0018\u0099\u0008 \u0001(\u000b2!.google.longrunning.OperationInfoB\u0097\u0001\n\u0016com.google.longrunningB\u000fOperationsProtoP\u0001Z=google.golang.org/genproto/googleapis/longrunning;longrunning\u00f8\u0001\u0001\u00aa\u0002\u0012Google.LongRunning\u00ca\u0002\u0012Google\\LongRunningb\u0006proto3"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 6
    invoke-static {}, Lcom/google/api/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 7
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 8
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 9
    invoke-static {}, Lcom/google/protobuf/z;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    .line 10
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    .line 11
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    .line 12
    invoke-static {v1, v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    sput-object v1, Lcom/google/longrunning/c;->r:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/longrunning/c;->b:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v12, "Name"

    const-string v13, "Metadata"

    const-string v14, "Done"

    const-string v15, "Error"

    const-string v16, "Response"

    const-string v17, "Result"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/longrunning/c;->c:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/longrunning/c;->d:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Name"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/longrunning/c;->e:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/longrunning/c;->f:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Filter"

    const-string v7, "PageSize"

    const-string v12, "PageToken"

    filled-new-array {v4, v6, v7, v12}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/longrunning/c;->g:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/longrunning/c;->h:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Operations"

    const-string v7, "NextPageToken"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/longrunning/c;->i:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/longrunning/c;->j:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/longrunning/c;->k:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/longrunning/c;->l:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/longrunning/c;->m:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/longrunning/c;->n:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Timeout"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/longrunning/c;->o:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-static {}, Lcom/google/longrunning/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/longrunning/c;->p:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ResponseType"

    const-string v4, "MetadataType"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/longrunning/c;->q:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    sget-object v1, Lcom/google/longrunning/c;->r:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 30
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/google/api/m;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 32
    sget-object v1, Lcom/google/api/b;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 33
    sget-object v1, Lcom/google/api/m;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 34
    sget-object v1, Lcom/google/longrunning/c;->r:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 35
    invoke-static {}, Lcom/google/api/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lcom/google/api/m;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lcom/google/protobuf/z;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/longrunning/c;->r:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
