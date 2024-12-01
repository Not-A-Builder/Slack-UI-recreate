//
//  ContentView.swift
//  test for prince
//
//  Created by NB-NEWMAC31 on 07/10/24.
//

import SwiftUI

struct ScrollableVStackView: View {
    var body: some View {
			
			/* ZStack { // contains background and foreground
				
				Color(.black)
					.ignoresSafeArea() */
		
		VStack { // header starts
			HStack(spacing: 8) {
				Image(systemName: "chevron.backward")
					.foregroundColor(.black)
					.imageScale(.medium)
				Text("Profile")
					.frame(maxWidth: .infinity)
					.font(.headline)
					.foregroundColor(.black)
				Image(systemName: "ellipsis")
					.foregroundColor(.black)
					.imageScale(.medium)

			}
			.padding()
			.frame(maxWidth: .infinity)
			.background(Color.white) // White background
			.overlay(
				Divider()
					.frame(height: 0.25)
					.background(Color.gray),
				alignment: .bottom
			)
			Spacer() // Push the header to the top
		}  // header ends
		.frame(height: 30) // Header height
		
		
		ScrollView { // scroll view starts
				
			VStack { // contains all foreground
				
				VStack { // contains image, name and designation
					/*Image(systemName: "hand.wave.fill")
					 .imageScale(.large)
					 .foregroundStyle(.white)
					 .padding(.bottom, 40)*/
					Image("prince_image")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.clipShape(RoundedRectangle(cornerRadius: 24))
					/*.clipShape(Circle()
					 /*UnevenRoundedRectangle(cornerRadii:.init(
					  topLeading: 150.0,
					  bottomLeading: 0.0,
					  bottomTrailing: 150.0,
					  topTrailing: 0.0))*/
					 //.stroke(style: )
					 )*/
						.padding(.vertical, 16)
					
					HStack { // contains title
						Text("Prince")
							.font(.title)
							.fontWeight(.bold)
							.foregroundColor(.black)
							.multilineTextAlignment(.leading)
						Spacer()
					} // contains title
					.padding(.bottom, 0.5)
					
					HStack { // contains subtitle
						Text("Visual Designer")
							.font(.title3)
							.fontWeight(.light)
							.foregroundColor(.black)
						Spacer()
					} // contains subtitle
					.padding(.bottom, 2)
					
				} // contains image, name and designation
				.padding (.bottom, 12)
				
				VStack { // contains status and local time
					
					HStack { // contains status
						HStack { // contains green circle
							Spacer()
							Image(systemName: "circle.fill")
								.imageScale(.small)
								.foregroundStyle(.green)
							Spacer()
						}
						.frame(width: 32)
						Text("Active")
							.font(.body)
							.fontWeight(.light)
							.foregroundStyle(.black)
						Spacer()
					} // contains status
					.padding(.bottom, 6)
					
					HStack { // contains local time
						HStack {
							Spacer()
							Image(systemName: "clock")
								.imageScale(.medium)
								.foregroundStyle(.black)
							Spacer()
						}
						.frame(width: 32)
						Text("4:51 PM local time")
							.font(.body)
							.fontWeight(.light)
							.foregroundStyle(.black)
						Spacer()
					} // contains local time
					.padding(.bottom, 6)
					
				} // contains status and local time
				.padding(.bottom, 6)
				
				VStack { // contains both the buttons
					Button(action: { // first button starts
						print("Hello world!")
					})
					{
						HStack(spacing: -4) {
							Spacer()
							Image(systemName: "message")
								.imageScale(.medium)
								.foregroundStyle(.black)
							Text("Message")
								.font(.headline)
								.foregroundColor(.black)
								.padding()
							Spacer()
						}
					}
					.overlay(
						RoundedRectangle(cornerRadius: 8)
							.stroke(Color.black, lineWidth: 0.4)
					)
					.padding(.vertical, 8)
					// first button ends
					
					Button(action: { // second button starts
						print("Hello world!")
					})
					{
						HStack(spacing: -4) {
							Spacer()
							Image(systemName: "headphones")
								.imageScale(.medium)
								.foregroundStyle(.black)
							Text("Huddle")
								.font(.headline)
								.foregroundColor(.black)
								.padding()
							Spacer()
						}
					}
					.overlay(
						RoundedRectangle(cornerRadius: 8)
							.stroke(Color.black, lineWidth: 0.4)
					)
					.padding(.vertical, 8)
					// second button ends
				} // contains both the buttons
				.padding(.bottom, 8)
				
				Divider()
					.frame(height: 0.2)
					.background(Color.gray)
					.padding(.horizontal, -16)
				
				VStack { // contains contact info
					HStack {
						Text("Contact information")
							.font(.callout)
							.foregroundColor(.black)
						Spacer()
					}
					HStack { // contains email icon and address
						HStack {
							Spacer()
							Image(systemName: "envelope")
								.imageScale(.medium)
								.foregroundStyle(.black)
							Spacer()
						}
						.frame(width: 32)
						VStack { // contains email id and "work"
							HStack {
								Text(verbatim: "prince@netbramha.com")
									.font(.body)
									.fontWeight(.light)
									.foregroundColor(.black)
								Spacer()
							}
							HStack {
								Text("Work")
									.font(.footnote)
									.fontWeight(.light)
									.foregroundColor(.black)
								Spacer()
							}
						} // contains email id and "work"
					} // contains email icon and address
					.padding(.vertical, 6)
				} // contains contact info
				.padding(.vertical, 12)
				
				Divider()
					.frame(height: 0.2)
					.background(Color.gray)
					.padding(.horizontal, -16)
				
				VStack { // contains additional info
					HStack {
						Text("Additional information")
							.font(.callout)
							.foregroundColor(.black)
						Spacer()
					}
					HStack { // contains email icon and address
						VStack { // contains email id and "work"
							HStack {
								Text("Start Date")
									.font(.footnote)
									.fontWeight(.light)
									.foregroundColor(.black)
								Spacer()
							}
							HStack {
								Text("1 Nov 2023")
									.font(.body)
									.fontWeight(.light)
									.foregroundColor(.black)
								Spacer()
							}
						} // contains email id and "work"
					} // contains email icon and address
					.padding(.vertical, 6)
				} // contains additional info
				.padding(.vertical, 12)
				
				// Spacer()
				
			} // contains all foreground
			.padding(.horizontal, 16)
			
		// } // contains background and foreground
		
		} // scroll view ends here
    }
}

#Preview {
	ScrollableVStackView()
}
