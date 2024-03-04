.class public final Lfh/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;)Lfh/i;
    .locals 4

    .line 1
    sget-object v0, Lfh/f$a;->a:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getHeaderMatchSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown header matcher type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getHeaderMatchSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 5
    invoke-static {v0, v1, p0}, Lfh/i;->h(Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getPrefixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 7
    invoke-static {v0, v1, p0}, Lfh/i;->d(Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getPresentMatch()Z

    move-result v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 9
    invoke-static {v0, v1, p0}, Lfh/i;->e(Ljava/lang/String;ZZ)Lfh/i;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getRangeMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;->getStart()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getRangeMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;->getEnd()J

    move-result-wide v2

    .line 11
    invoke-static {v0, v1, v2, v3}, Lfh/i$a;->a(JJ)Lfh/i$a;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 13
    invoke-static {v1, v0, p0}, Lfh/i;->f(Ljava/lang/String;Lfh/i$a;Z)Lfh/i;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getSafeRegexMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;->getRegex()Ljava/lang/String;

    move-result-object v0

    .line 15
    :try_start_0
    invoke-static {v0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/re2j/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 17
    invoke-static {v1, v0, p0}, Lfh/i;->g(Ljava/lang/String;Lcom/google/re2j/Pattern;Z)Lfh/i;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeaderMatcher ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains malformed safe regex pattern: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getExactMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 22
    invoke-static {v0, v1, p0}, Lfh/i;->c(Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lfh/j;
    .locals 3

    .line 1
    sget-object v0, Lfh/f$a;->b:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getMatchPatternCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getContains()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfh/j;->d(Ljava/lang/String;)Lfh/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown StringMatcher match pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getMatchPatternCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getSafeRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;->getRegex()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lfh/j;->g(Lcom/google/re2j/Pattern;)Lfh/j;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getIgnoreCase()Z

    move-result p0

    invoke-static {v0, p0}, Lfh/j;->h(Ljava/lang/String;Z)Lfh/j;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getIgnoreCase()Z

    move-result p0

    invoke-static {v0, p0}, Lfh/j;->f(Ljava/lang/String;Z)Lfh/j;

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getExact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getIgnoreCase()Z

    move-result p0

    invoke-static {v0, p0}, Lfh/j;->e(Ljava/lang/String;Z)Lfh/j;

    move-result-object p0

    return-object p0
.end method
