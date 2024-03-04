.class final Leh/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/l1;
.implements Leh/l1$d;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field static final b:Leh/y1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Leh/y1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Leh/y1;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Leh/y1;

    invoke-direct {v0}, Leh/y1;-><init>()V

    sput-object v0, Leh/y1;->b:Leh/y1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Lhh/t;
    .locals 1

    .line 1
    invoke-static {p0}, Leh/y1;->q(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getPrefixLen()Lcom/google/protobuf/UInt32Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result p0

    .line 2
    invoke-static {v0, p0}, Lfh/g;->b(Ljava/net/InetAddress;I)Lfh/g;

    move-result-object p0

    invoke-static {p0}, Lhh/t;->a(Lfh/g;)Lhh/t;

    move-result-object p0

    return-object p0
.end method

.method private static e(I)Lhh/u;
    .locals 0

    invoke-static {p0}, Lhh/u;->a(I)Lhh/u;

    move-result-object p0

    return-object p0
.end method

.method private static f(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Lhh/c0;
    .locals 1

    .line 1
    invoke-static {p0}, Leh/y1;->q(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getPrefixLen()Lcom/google/protobuf/UInt32Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result p0

    .line 2
    invoke-static {v0, p0}, Lfh/g;->b(Ljava/net/InetAddress;I)Lfh/g;

    move-result-object p0

    invoke-static {p0}, Lhh/c0;->a(Lfh/g;)Lhh/c0;

    move-result-object p0

    return-object p0
.end method

.method private static g(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;)Lhh/s;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;->getPrincipalName()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object p0

    invoke-static {p0}, Lfh/f;->b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lfh/j;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lhh/s;->a(Lfh/j;)Lhh/s;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int32Range;)Lhh/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int32Range;->getStart()I

    move-result v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int32Range;->getEnd()I

    move-result p0

    invoke-static {v0, p0}, Lhh/v;->a(II)Lhh/v;

    move-result-object p0

    return-object p0
.end method

.method private static i(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;)Lhh/r;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grpc-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":scheme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lfh/f;->a(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;)Lfh/i;

    move-result-object p0

    invoke-static {p0}, Lhh/r;->a(Lfh/i;)Lhh/r;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid header matcher config: header name [:scheme] is not allowed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid header matcher config: [grpc-] prefixed header name is not allowed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static j(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;)Lhh/z;
    .locals 3

    .line 1
    sget-object v0, Leh/y1$a;->d:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;->getRuleCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$RuleCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;->getPath()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object p0

    invoke-static {p0}, Lfh/f;->b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lfh/j;

    move-result-object p0

    invoke-static {p0}, Lhh/z;->a(Lfh/j;)Lhh/z;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown path matcher rule type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;->getRuleCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$RuleCase;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static k(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;)Lhh/x;
    .locals 3

    .line 1
    sget-object v0, Leh/y1$a;->b:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getRuleCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission rule case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getRuleCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getRequestedServerName()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->p(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lhh/b0;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_1
    sget-object p0, Lhh/o;->a:Lhh/o;

    invoke-static {p0}, Lhh/w;->a(Lhh/x;)Lhh/w;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getNotRule()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->k(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;)Lhh/x;

    move-result-object p0

    invoke-static {p0}, Lhh/w;->a(Lhh/x;)Lhh/w;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getDestinationPortRange()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int32Range;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->h(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int32Range;)Lhh/v;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getDestinationPort()I

    move-result p0

    invoke-static {p0}, Leh/y1;->e(I)Lhh/u;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getDestinationIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Lhh/t;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getUrlPath()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->j(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;)Lhh/z;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->i(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;)Lhh/r;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_8
    sget-object p0, Lhh/o;->a:Lhh/o;

    return-object p0

    .line 13
    :pswitch_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getOrRules()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$Set;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$Set;->getRulesList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->l(Ljava/util/List;)Lhh/y;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;->getAndRules()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$Set;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$Set;->getRulesList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;

    .line 16
    invoke-static {v1}, Leh/y1;->k(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;)Lhh/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0}, Lhh/p;->b(Ljava/util/List;)Lhh/p;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static l(Ljava/util/List;)Lhh/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;",
            ">;)",
            "Lhh/y;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;

    .line 3
    invoke-static {v1}, Leh/y1;->k(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;)Lhh/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lhh/y;->b(Ljava/util/List;)Lhh/y;

    move-result-object p0

    return-object p0
.end method

.method private static m(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;)Lhh/x;
    .locals 3

    .line 1
    sget-object v0, Leh/y1$a;->c:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getIdentifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown principal identifier case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getIdentifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    sget-object p0, Lhh/o;->a:Lhh/o;

    invoke-static {p0}, Lhh/w;->a(Lhh/x;)Lhh/w;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getUrlPath()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->j(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;)Lhh/z;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getNotId()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->m(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;)Lhh/x;

    move-result-object p0

    invoke-static {p0}, Lhh/w;->a(Lhh/x;)Lhh/w;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->i(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;)Lhh/r;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getSourceIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->f(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Lhh/c0;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->f(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Lhh/c0;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getDirectRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->f(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Lhh/c0;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAuthenticated()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->g(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;)Lhh/s;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_8
    sget-object p0, Lhh/o;->a:Lhh/o;

    return-object p0

    .line 13
    :pswitch_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAndIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->getIdsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    .line 15
    invoke-static {v1}, Leh/y1;->m(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;)Lhh/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lhh/p;->b(Ljava/util/List;)Lhh/p;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getOrIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->getIdsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Leh/y1;->n(Ljava/util/List;)Lhh/y;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static n(Ljava/util/List;)Lhh/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;",
            ">;)",
            "Lhh/y;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    .line 3
    invoke-static {v1}, Leh/y1;->m(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;)Lhh/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lhh/y;->b(Ljava/util/List;)Lhh/y;

    move-result-object p0

    return-object p0
.end method

.method static o(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;)Leh/w0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;",
            ")",
            "Leh/w0<",
            "Leh/x1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;->hasRules()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Leh/x1;->c(Lhh/q;)Leh/x1;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->a(Ljava/lang/Object;)Leh/w0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;->getRules()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC;

    move-result-object p0

    .line 4
    sget-object v0, Leh/y1$a;->a:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC;->getAction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown rbacConfig action type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC;->getAction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-static {v1}, Leh/x1;->c(Lhh/q;)Leh/x1;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->a(Ljava/lang/Object;)Leh/w0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;->DENY:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;->ALLOW:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC;->getPoliciesMap()Ljava/util/Map;

    move-result-object p0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Policy;

    .line 13
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Policy;->hasCondition()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Policy;->hasCheckedCondition()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Policy;->getPermissionsList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Leh/y1;->l(Ljava/util/List;)Lhh/y;

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Policy;->getPrincipalsList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Leh/y1;->n(Ljava/util/List;)Lhh/y;

    move-result-object v3

    .line 17
    invoke-static {v2, v4, v3}, Lhh/a0;->a(Ljava/lang/String;Lhh/y;Lhh/y;)Lhh/a0;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_5
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Policy.condition and Policy.checked_condition must not set: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {p0}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered error parsing policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p0

    return-object p0

    .line 22
    :cond_6
    invoke-static {v1, v0}, Lhh/q;->b(Ljava/util/List;Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;)Lhh/q;

    move-result-object p0

    .line 23
    invoke-static {p0}, Leh/x1;->c(Lhh/q;)Leh/x1;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->a(Ljava/lang/Object;)Leh/w0;

    move-result-object p0

    return-object p0
.end method

.method private static p(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lhh/b0;
    .locals 0

    invoke-static {p0}, Lfh/f;->b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lfh/j;

    move-result-object p0

    invoke-static {p0}, Lhh/b0;->a(Lfh/j;)Lhh/b0;

    move-result-object p0

    return-object p0
.end method

.method private static q(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Ljava/net/InetAddress;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getAddressPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address can not be found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 2

    const-string v0, "type.googleapis.com/envoy.extensions.filters.http.rbac.v3.RBAC"

    const-string v1, "type.googleapis.com/envoy.extensions.filters.http.rbac.v3.RBACPerRoute"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/l1;)Leh/w0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            ")",
            "Leh/w0<",
            "Leh/x1;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid config type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lcom/google/protobuf/Any;

    .line 4
    :try_start_0
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBACPerRoute;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBACPerRoute;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBACPerRoute;->hasRbac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBACPerRoute;->getRbac()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;

    move-result-object p1

    invoke-static {p1}, Leh/y1;->o(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;)Leh/w0;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Leh/x1;->c(Lhh/q;)Leh/x1;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->a(Ljava/lang/Object;)Leh/w0;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/protobuf/l1;)Leh/w0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            ")",
            "Leh/w0<",
            "Leh/x1;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid config type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lcom/google/protobuf/Any;

    .line 4
    :try_start_0
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {p1}, Leh/y1;->o(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/rbac/v3/RBAC;)Leh/w0;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1
.end method
