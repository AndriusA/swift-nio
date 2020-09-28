//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftNIO open source project
//
// Copyright (c) 2017-2018 Apple Inc. and the SwiftNIO project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftNIO project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//
//
// LinuxMain.swift
//
import XCTest

///
/// NOTE: This file was generated by generate_linux_tests.rb
///
/// Do NOT edit this file directly as it will be regenerated automatically when needed.
///

#if os(Linux) || os(FreeBSD)
   @testable import NIOConcurrencyHelpersTests
   @testable import NIOFoundationCompatTests
   @testable import NIOHTTP1Tests
   @testable import NIOTLSTests
   @testable import NIOTestUtilsTests
   @testable import NIOTests
   @testable import NIOWebSocketTests

// This protocol is necessary to we can call the 'run' method (on an existential of this protocol)
// without the compiler noticing that we're calling a deprecated function.
// This hack exists so we can deprecate individual tests which test deprecated functionality without
// getting a compiler warning...
protocol LinuxMainRunner { func run() }
class LinuxMainRunnerImpl: LinuxMainRunner {
   @available(*, deprecated, message: "not actually deprecated. Just deprecated to allow deprecated tests (which test deprecated functionality) without warnings")
   func run() {
       XCTMain([
             testCase(AcceptBackoffHandlerTest.allTests),
             testCase(AdaptiveRecvByteBufferAllocatorTest.allTests),
             testCase(ApplicationProtocolNegotiationHandlerTests.allTests),
             testCase(Base64Test.allTests),
             testCase(BaseObjectTest.allTests),
             testCase(BlockingIOThreadPoolTest.allTests),
             testCase(BootstrapTest.allTests),
             testCase(ByteBufferDataProtocolTests.allTests),
             testCase(ByteBufferTest.allTests),
             testCase(ByteBufferUtilsTest.allTests),
             testCase(ByteBufferViewDataProtocolTests.allTests),
             testCase(ByteToMessageDecoderTest.allTests),
             testCase(ByteToMessageDecoderVerifierTest.allTests),
             testCase(ChannelNotificationTest.allTests),
             testCase(ChannelOptionStorageTest.allTests),
             testCase(ChannelPipelineTest.allTests),
             testCase(ChannelTests.allTests),
             testCase(CircularBufferTests.allTests),
             testCase(CodableByteBufferTest.allTests),
             testCase(ControlMessageTests.allTests),
             testCase(CustomChannelTests.allTests),
             testCase(DatagramChannelTests.allTests),
             testCase(DispatchQueueWithFutureTest.allTests),
             testCase(EchoServerClientTest.allTests),
             testCase(EmbeddedChannelTest.allTests),
             testCase(EmbeddedEventLoopTest.allTests),
             testCase(EventCounterHandlerTest.allTests),
             testCase(EventLoopFutureTest.allTests),
             testCase(EventLoopTest.allTests),
             testCase(FileRegionTest.allTests),
             testCase(GetaddrinfoResolverTest.allTests),
             testCase(HTTPClientResponseAggregatorTest.allTests),
             testCase(HTTPClientUpgradeTestCase.allTests),
             testCase(HTTPDecoderLengthTest.allTests),
             testCase(HTTPDecoderTest.allTests),
             testCase(HTTPHeadersTest.allTests),
             testCase(HTTPRequestEncoderTests.allTests),
             testCase(HTTPResponseEncoderTests.allTests),
             testCase(HTTPResponseStatusTests.allTests),
             testCase(HTTPServerClientTest.allTests),
             testCase(HTTPServerPipelineHandlerTest.allTests),
             testCase(HTTPServerProtocolErrorHandlerTest.allTests),
             testCase(HTTPServerRequestAggregatorTest.allTests),
             testCase(HTTPServerUpgradeTestCase.allTests),
             testCase(HTTPTest.allTests),
             testCase(HTTPTypesTest.allTests),
             testCase(HappyEyeballsTest.allTests),
             testCase(HeapTests.allTests),
             testCase(IOErrorTest.allTests),
             testCase(IdleStateHandlerTest.allTests),
             testCase(IntegerTypesTest.allTests),
             testCase(LinuxTest.allTests),
             testCase(MarkedCircularBufferTests.allTests),
             testCase(MessageToByteEncoderTest.allTests),
             testCase(MessageToByteHandlerTest.allTests),
             testCase(MulticastTest.allTests),
             testCase(NIOAnyDebugTest.allTests),
             testCase(NIOCloseOnErrorHandlerTest.allTests),
             testCase(NIOConcurrencyHelpersTests.allTests),
             testCase(NIOHTTP1TestServerTest.allTests),
             testCase(NIOSingleStepByteToMessageDecoderTest.allTests),
             testCase(NIOThreadPoolTest.allTests),
             testCase(NonBlockingFileIOTest.allTests),
             testCase(PendingDatagramWritesManagerTests.allTests),
             testCase(PipeChannelTest.allTests),
             testCase(PriorityQueueTest.allTests),
             testCase(SALChannelTest.allTests),
             testCase(SNIHandlerTest.allTests),
             testCase(SelectorTest.allTests),
             testCase(SocketAddressTest.allTests),
             testCase(SocketChannelTest.allTests),
             testCase(SocketOptionProviderTest.allTests),
             testCase(StreamChannelTest.allTests),
             testCase(SystemTest.allTests),
             testCase(ThreadTest.allTests),
             testCase(TimeAmountTests.allTests),
             testCase(TypeAssistedChannelHandlerTest.allTests),
             testCase(UniversalBootstrapSupportTest.allTests),
             testCase(UtilitiesTest.allTests),
             testCase(WebSocketClientEndToEndTests.allTests),
             testCase(WebSocketFrameDecoderTest.allTests),
             testCase(WebSocketFrameEncoderTest.allTests),
             testCase(WebSocketServerEndToEndTests.allTests),
        ])
    }
}
(LinuxMainRunnerImpl() as LinuxMainRunner).run()
#endif
