.class public final Lcom/google/type/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\n google/type/postal_address.proto\u0012\u000bgoogle.type\"\u00fd\u0001\n\rPostalAddress\u0012\u0010\n\u0008revision\u0018\u0001 \u0001(\u0005\u0012\u0013\n\u000bregion_code\u0018\u0002 \u0001(\t\u0012\u0015\n\rlanguage_code\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bpostal_code\u0018\u0004 \u0001(\t\u0012\u0014\n\u000csorting_code\u0018\u0005 \u0001(\t\u0012\u001b\n\u0013administrative_area\u0018\u0006 \u0001(\t\u0012\u0010\n\u0008locality\u0018\u0007 \u0001(\t\u0012\u0013\n\u000bsublocality\u0018\u0008 \u0001(\t\u0012\u0015\n\raddress_lines\u0018\t \u0003(\t\u0012\u0012\n\nrecipients\u0018\n \u0003(\t\u0012\u0014\n\u000corganization\u0018\u000b \u0001(\tBx\n\u000fcom.google.typeB\u0012PostalAddressProtoP\u0001ZFgoogle.golang.org/genproto/googleapis/type/postaladdress;postaladdress\u00f8\u0001\u0001\u00a2\u0002\u0003GTPb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/type/p;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/type/p;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/type/p;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Revision"

    const-string v3, "RegionCode"

    const-string v4, "LanguageCode"

    const-string v5, "PostalCode"

    const-string v6, "SortingCode"

    const-string v7, "AdministrativeArea"

    const-string v8, "Locality"

    const-string v9, "Sublocality"

    const-string v10, "AddressLines"

    const-string v11, "Recipients"

    const-string v12, "Organization"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/type/p;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/type/p;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
